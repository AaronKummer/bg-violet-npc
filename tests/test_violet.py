"""
Tests for the Violet NPC mod.

Validates creature stats, dialogue reference, custom items,
and supporting DLG/BCS files.
"""

import os
import unittest
from pathlib import Path

from bg_mod_tester.game import GameDirectory
from bg_mod_tester.readers import CreFile, ItmFile, DlgFile
from bg_mod_tester.tlk import TlkReader
from bg_mod_tester.validators import (
    validate_creature, validate_item, validate_dialogue, validate_script,
    validate_dialogue_deep, validate_portrait, validate_area_patch,
)

DEFAULT_GAME_DIR = r"C:\Program Files (x86)\Steam\steamapps\common\Baldur's Gate II Enhanced Edition"
GAME_DIR = os.environ.get("BG_GAME_DIR", DEFAULT_GAME_DIR)

_game = None
_skip_reason = None

def _get_game():
    global _game, _skip_reason
    if _game is not None:
        return _game
    if not Path(GAME_DIR).is_dir():
        _skip_reason = f"Game directory not found: {GAME_DIR}"
        return None
    try:
        _game = GameDirectory(GAME_DIR)
    except FileNotFoundError as exc:
        _skip_reason = str(exc)
        return None
    return _game


def _require_game(test_func):
    def wrapper(self):
        game = _get_game()
        if game is None:
            self.skipTest(_skip_reason)
        return test_func(self)
    wrapper.__name__ = test_func.__name__
    wrapper.__doc__ = test_func.__doc__
    return wrapper


class TestVioletCre(unittest.TestCase):
    """Tests for aaviolet.cre -- the main Violet creature file."""

    @_require_game
    def test_cre_exists(self):
        game = _get_game()
        path = game.resolve_resref("aaviolet", "cre")
        self.assertIsNotNone(path, "aaviolet.cre not found in override")

    @_require_game
    def test_stats(self):
        game = _get_game()
        cre = CreFile(game.resolve_resref("aaviolet", "cre"))
        self.assertEqual(cre.strength, 8, "STR should be 8")
        self.assertEqual(cre.intelligence, 20, "INT should be 20")
        self.assertEqual(cre.dexterity, 18, "DEX should be 18")
        self.assertEqual(cre.constitution, 10, "CON should be 10")
        self.assertEqual(cre.wisdom, 18, "WIS should be 18")
        self.assertEqual(cre.charisma, 16, "CHA should be 16")

    @_require_game
    def test_dialogue_ref(self):
        """Dialogue ref must point to AAVioleP (player-initiated dialogue)."""
        game = _get_game()
        cre = CreFile(game.resolve_resref("aaviolet", "cre"))
        self.assertEqual(
            cre.dialogue.lower(), "aaviolep",
            f"Dialogue should be AAVioleP, got '{cre.dialogue}'"
        )

    @_require_game
    def test_creature_validation_no_errors(self):
        game = _get_game()
        path = game.resolve_resref("aaviolet", "cre")
        issues = validate_creature(path, game=game)
        errors = [i for i in issues if i.severity == "ERROR"]
        self.assertEqual(errors, [], f"Creature validation errors: {errors}")


class TestVioletItems(unittest.TestCase):
    """Tests for Violet's custom items."""

    EXPECTED_ITEMS = ["aapulse", "aasignal", "aasubdrm", "aaneural"]

    @_require_game
    def test_items_exist(self):
        game = _get_game()
        for name in self.EXPECTED_ITEMS:
            with self.subTest(itm=name):
                path = game.resolve_resref(name, "itm")
                self.assertIsNotNone(path, f"{name}.itm not found in override")

    @_require_game
    def test_items_validate(self):
        game = _get_game()
        for name in self.EXPECTED_ITEMS:
            path = game.resolve_resref(name, "itm")
            if path is None:
                continue
            with self.subTest(itm=name):
                issues = validate_item(path)
                errors = [i for i in issues if i.severity == "ERROR"]
                self.assertEqual(errors, [], f"{name} validation errors: {errors}")


class TestVioletDialogues(unittest.TestCase):
    """Tests for Violet DLG files."""

    @_require_game
    def test_dlg_files_exist(self):
        game = _get_game()
        found = list(game.override_files(extension="dlg", prefix="aaviole"))
        self.assertGreater(len(found), 0, "No Violet DLG files found with prefix 'aaviole'")

    @_require_game
    def test_dlg_files_have_states(self):
        game = _get_game()
        for path in game.override_files(extension="dlg", prefix="aaviole"):
            with self.subTest(dlg=path.name):
                dlg = DlgFile(path)
                self.assertGreater(dlg.num_states, 0, f"{path.name} has 0 states")


class TestVioletScripts(unittest.TestCase):
    """Tests for Violet BCS scripts."""

    @_require_game
    def test_bcs_files_exist(self):
        game = _get_game()
        found = list(game.override_files(extension="bcs", prefix="aaviole"))
        self.assertGreater(len(found), 0, "No Violet BCS files found with prefix 'aaviole'")

    @_require_game
    def test_bcs_files_validate(self):
        game = _get_game()
        for path in game.override_files(extension="bcs", prefix="aaviole"):
            with self.subTest(bcs=path.name):
                issues = validate_script(path)
                errors = [i for i in issues if i.severity == "ERROR"]
                self.assertEqual(errors, [], f"{path.name} errors: {errors}")


class TestVioletInventory(unittest.TestCase):
    """Validate that Violet's creature inventory items exist."""

    @_require_game
    def test_inventory_items_exist(self):
        game = _get_game()
        path = game.resolve_resref("aaviolet", "cre")
        if path is None:
            self.skipTest("aaviolet.cre not found")
        issues = validate_creature(path, game=game)
        inv_errors = [i for i in issues if i.severity == "ERROR" and "Inventory" in i.message]
        self.assertEqual(inv_errors, [], f"Inventory errors: {inv_errors}")


class TestVioletDialogueDeep(unittest.TestCase):
    """Deep validation of all Violet DLG files."""

    @_require_game
    def test_dialogue_deep_no_errors(self):
        game = _get_game()
        tlk = TlkReader(game.dialog_tlk)
        for path in game.override_files(extension="dlg", prefix="aaviole"):
            with self.subTest(dlg=path.name):
                issues = validate_dialogue_deep(path, game=game, tlk=tlk)
                errors = [i for i in issues if i.severity == "ERROR"]
                self.assertEqual(errors, [],
                                 f"{path.name} deep validation errors: {errors}")


class TestVioletAreaPatches(unittest.TestCase):
    """Verify area script patches for the Violet mod."""

    @_require_game
    def test_ar2300_patch(self):
        game = _get_game()
        issues = validate_area_patch(game, "ar2300", "aasignal")
        errors = [i for i in issues if i.severity == "ERROR"]
        self.assertEqual(errors, [], f"ar2300 patch errors: {errors}")
        warnings = [i for i in issues if i.severity == "WARNING"]
        self.assertEqual(warnings, [], f"ar2300 patch warnings: {warnings}")


class TestVioletPortraits(unittest.TestCase):
    """Validate Violet portrait BMPs in override."""

    @_require_game
    def test_portrait_bmps_valid(self):
        game = _get_game()
        bmps = list(game.override_files(extension="bmp", prefix="aaviole"))
        for path in bmps:
            with self.subTest(bmp=path.name):
                issues = validate_portrait(path)
                errors = [i for i in issues if i.severity == "ERROR"]
                self.assertEqual(errors, [],
                                 f"{path.name} portrait errors: {errors}")


if __name__ == "__main__":
    unittest.main()
