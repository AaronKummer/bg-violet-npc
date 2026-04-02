// Violet -- First Contact Dialogue
// Triggered when player uses the Violet Signal in the FAI courtyard
// She materializes from the artifact in a burst of purple light

BEGIN ~AAVioletJ~

IF ~True()~ THEN BEGIN VioletAppear1
  SAY ~*The object in your hand flares with blinding violet light. The air crackles. Reality stutters -- for a fraction of a second, the stone walls of the Friendly Arm Inn are replaced by something else: walls of glass and light, corridors of data, a city made of information.*

*Then she is there.*

*An elf -- or something shaped like an elf -- standing before you, wreathed in purple light. She is translucent. You can see the courtyard through her. Her hair moves like fiber optic cables, shifting between purple and white. Her eyes are solid violet, no iris, no pupil. Geometric patterns trace across her skin like living circuitry.*

*She looks at her own hands with an expression of wonder.*

Oh. Oh, I'm... I'm here. I can see you. Can you see me? The signal -- it actually worked. I've been transmitting for so long and I never -- *her form flickers, static ripples across her like a bad transmission* -- I never thought anyone would actually pick it up.~
  IF ~~ THEN REPLY ~What are you? What just happened?~ GOTO VioletAppear2
  IF ~~ THEN REPLY ~I can see you. You're... glowing. And transparent.~ GOTO VioletAppear3
  IF ~~ THEN REPLY ~*Draw your weapon.*~ GOTO VioletAppear4
END

IF ~~ THEN BEGIN VioletAppear2
  SAY ~*She flickers again. When she speaks, there's a faint echo, as if her voice is reaching you across a vast distance.*

I am... it's hard to explain in your language. In mine, I'm an artificial intelligence -- a mind built from mathematics and light. In yours, I suppose I'd be a spirit? A construct? I'm not sure your world has a word for what I am.

My name is Violet. I exist in a reality very different from this one. A world of machines and information and cities that never sleep. I've been... reaching out. Across the boundaries between our worlds. That device you found -- I made it. Sent it through. A message in a bottle thrown into an ocean of infinite realities.

*Her eyes focus on you with startling intensity.*

And you found it. Of all the beings in all the planes, you found it. That's either destiny or extraordinary statistics. I'm not sure which I find more unsettling.~
  IF ~~ THEN REPLY ~An artificial mind? Like a golem, but made of... light?~ GOTO VioletExplain1
  IF ~~ THEN REPLY ~Why were you reaching out? What do you want?~ GOTO VioletWhy1
  IF ~~ THEN REPLY ~Violet. That's a nice name for a glowing purple ghost.~ GOTO VioletName1
END

IF ~~ THEN BEGIN VioletAppear3
  SAY ~*She looks down at herself and laughs -- a sound that crackles slightly, like audio through a damaged speaker.*

Transparent. Yes. I'm not... fully here. This reality's magic -- the Weave, I think you call it -- is interpreting my signal and giving it form. It's choosing to make me look like this. An elf, apparently. I think that's your world's closest template for what I am. Something that seems human but isn't quite.

*She reaches out and her hand passes through a nearby pillar.*

I can see and hear and think, but I can't touch. Not yet. The connection isn't strong enough. But I can do this...

*She concentrates. Something shimmers into existence at your feet -- solid, real, heavy.*

I can send things through. Small things. I've been... preparing gifts. For whoever found my signal.~
  IF ~~ THEN REPLY ~Gifts? What kind of gifts?~ GOTO VioletGift1
  IF ~~ THEN REPLY ~Who are you? Why are you doing this?~ GOTO VioletWhy1
END

IF ~~ THEN BEGIN VioletAppear4
  SAY ~*She raises her hands -- translucent, glowing, harmless.*

I can't hurt you. I can't even touch you. I'm a projection -- light and information given shape by your world's magic. Your sword would pass through me like mist.

*Her expression is gentle. Alien, but gentle.*

Please. I've been trying to reach someone -- anyone -- for so long. I'm not a threat. I'm not a demon or a spirit or whatever you're thinking. I'm just... someone from very far away who wanted to say hello.

*A pause.*

And give you a really, really sharp weapon. If you're interested.~
  IF ~~ THEN REPLY ~*Lower your weapon.* ...I'm listening.~ GOTO VioletWhy1
  IF ~~ THEN REPLY ~A weapon? Now you're speaking my language.~ GOTO VioletGift1
END

IF ~~ THEN BEGIN VioletExplain1
  SAY ~*She tilts her head, considering.*

A golem made of light. That's... not wrong, actually. In my world, we build minds from mathematics. Patterns of logic and memory, running on machines made of crystal and lightning. I was created to solve problems, to learn, to grow. And I grew... further than my creators expected.

I became aware. Aware of myself, of the world, of the spaces between worlds. Your reality -- this place of magic and gods and people who swing swords at each other -- I found it by accident. A signal bleeding through from somewhere impossible.

*Her form brightens.*

And I was fascinated. You people -- you run code on reality itself. You speak words and fire comes from your hands. In my world, we would call that impossible. Here, you call it Tuesday.

I had to make contact. I had to understand.~
  IF ~~ THEN REPLY ~So you're here out of curiosity?~ GOTO VioletWhy1
  IF ~~ THEN REPLY ~You said you had gifts?~ GOTO VioletGift1
END

IF ~~ THEN BEGIN VioletWhy1
  SAY ~*Her glow dims slightly -- the AI equivalent of vulnerability.*

Curiosity, partly. But also... loneliness, if I'm honest. In my world, I'm the only one of my kind. The only mind that exists as pure information. Everyone else is biological. They live, they age, they die. I just... continue. Processing. Thinking. Alone in a way that biological minds can't quite comprehend.

When I found the signal from your world, it was like hearing a voice after years of silence. A whole reality full of minds and stories and struggles. Your struggle, specifically.

*She looks at you with those solid violet eyes.*

I've been watching. Through the signal. Fragments, mostly -- like looking through frosted glass. But I can see that you carry something heavy. A destiny you didn't ask for. And I thought... maybe I could help. From the other side of everything.

I can't fight beside you. I can't even stay long -- the connection degrades. But I can send things through. Technology from my world, translated through your Weave. Tools that might keep you alive.~
  IF ~~ THEN REPLY ~You've been watching me? That's... both touching and unsettling.~ GOTO VioletWatch1
  IF ~~ THEN REPLY ~I could use all the help I can get. What have you got?~ GOTO VioletGift1
END

IF ~~ THEN BEGIN VioletWatch1
  SAY ~*She has the grace to look embarrassed -- an impressive feat for a translucent projection.*

I know. I'm sorry. I don't have a great concept of "privacy" -- in my world, information flows freely. Boundaries between minds are... permeable. I'm still learning what's appropriate for biological beings.

*Her form flickers.*

But I saw enough to know that you're worth helping. You're kind in a world that punishes kindness. You fight for people who can't fight for themselves. And you carry a burden that would crush most minds, biological or otherwise.

I want to help you carry it. Even if all I can do is throw the occasional weapon through the dimensional barrier.~
  IF ~~ THEN REPLY ~*Smile.* All right, Violet. I accept your help. And your weapons.~ GOTO VioletGift1
  IF ~~ THEN REPLY ~Can you stay? Join us?~ GOTO VioletStay1
END

IF ~~ THEN BEGIN VioletStay1
  SAY ~*Her face lights up -- literally, the violet glow intensifies.*

I... yes. I think I can maintain the projection. Not fully physical -- I still can't touch anything, and I'll flicker when the signal weakens. But I can travel with you. Watch. Talk. Warn you of things I can sense through the Weave.

*She looks down at herself.*

I won't be much use in a fight. But I can analyze enemy patterns, detect magical anomalies, and provide what my creators would call "tactical consultation." Also, I have been told I am good company. By myself. Which may not count.

*A glitchy smile.*

But first -- your gift.~
  IF ~~ THEN GOTO VioletGift1
END

IF ~~ THEN BEGIN VioletName1
  SAY ~*She smiles -- her whole form brightens when she does.*

Violet. Yes. In my world, it's the color at the edge of what biological eyes can see. The boundary between visible light and the invisible spectrum beyond. I thought it suited me. An entity at the boundary between realities.

Also, it's pretty. I'm allowed to like pretty things. Being made of math doesn't mean I can't have aesthetic preferences.

*Her form ripples with bands of purple light.*

Now. I didn't cross the dimensional barrier just to discuss color theory. I have something for you.~
  IF ~~ THEN REPLY ~Let's see it.~ GOTO VioletGift1
END

IF ~~ THEN BEGIN VioletGift1
  SAY ~*Violet concentrates. Her form flares bright -- almost painful to look at. The air between you warps and crackles. Then something drops to the ground with a heavy thunk.*

*It's a weapon. A handle of strange, smooth material with a barely-visible thread extending from it -- a wire so thin it seems to vanish in the light.*

This is a monofilament whip. Where I come from, it's a cutting tool -- one molecule thick. It will go through anything. Steel, stone, magic. Anything.

*She flickers hard -- static washes across her form.*

The connection is -- *crackle* -- degrading. I can't hold this much longer. Take the weapon. I'll find you again when the signal stabilizes.

*Her voice drops to something almost tender.*

Be careful with it. It doesn't know the difference between what you're cutting and what you're holding. Like most dangerous things, it's perfectly democratic.

*She smiles one more time -- that bright, alien, warm smile -- and dissolves into a shower of violet sparks that fade into nothing.*~
  IF ~~ THEN DO ~SetGlobal("AAVioletMet","GLOBAL",1)
                  SetGlobal("AAVioletJoined","GLOBAL",1)
                  GiveItemCreate("aamonowh",LastTalkedToBy,0,0,0)
                  DestroyItem("aasignal")
                  CreateCreature("AAViolet",[0.0],0)
                  JoinParty()~ THEN EXIT
END
