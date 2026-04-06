// Violet -- Interdimensional Appearances
// Brief manifestations at key BG1 locations after first meeting
// Tied to Null Drift / Ghost Protocol universe

// =============================================
// APPEARANCE 2: Friendly Arm Inn area
// Triggered after first meeting, when player returns to FAI
// Violet's signal is stronger here -- planar thin spot
// =============================================

APPEND ~AAVioleJ~

IF ~Global("AAVioletMet","GLOBAL",1) Global("AAVioletFAI","GLOBAL",0) AreaCheck("BG2300")~ THEN BEGIN VioletFAI
  SAY ~*The monofilament whip hums in your pack. The air splits with a sound like tearing silk, and Violet flickers into existence -- less stable than before, her form shot through with bands of static.*

You can hear me? Good. The connection is -- *kssh* -- intermittent. This location. There is something about it. The barrier between realities is thin here. I can almost --

*Her form solidifies slightly. Her violet eyes focus.*

I have been monitoring other signals. Other realities bleeding through. There are more travelers here than you know, <CHARNAME>. A man who calls himself a Hashira. A pale swordsman carrying something that screams in frequencies I cannot identify. This world is attracting us. All of us. Like -- like a signal fire in the dark between dimensions.

*Static washes across her.*

I do not think this is coincidence. Something is pulling at the walls between worlds. And whatever it is, it is getting stronger.~
  IF ~~ THEN REPLY ~What kind of signals are you detecting?~ GOTO VioletSignals
  IF ~~ THEN REPLY ~You said other realities. How many are there?~ GOTO VioletRealities
  IF ~~ THEN REPLY ~Is this dangerous?~ GOTO VioletFAIDanger
END

IF ~~ THEN BEGIN VioletSignals
  SAY ~*Her eyes flicker with cascading data -- like watching code scroll behind violet glass.*

Dozens. Hundreds. Most are just noise -- background radiation from dying universes. But three signals are strong. Persistent. Yours. Mine. And one other.

*She pauses.*

There is a city. Somewhere in the static. A city of neon and rain where the buildings never stop reaching upward and the people have wired themselves into a network they do not control. I have been watching a boy there -- a delivery driver who stumbled into something much larger than himself. He reminds me of you, actually. Wrong place. Wrong time. Right heart.

*Her form flickers hard.*

And there is a corporation in that city called MegaCorp. They built something called a CortexLink -- a neural implant that connects minds to a shared network. They told people it was for healthcare. For productivity. It was neither. It was a leash.

Remember that, <CHARNAME>. When powerful people offer gifts, ask what the leash looks like.~
  IF ~~ THEN REPLY ~That sounds like something the Iron Throne would do.~ GOTO VioletIronThrone1
  IF ~~ THEN REPLY ~Are you saying someone here is doing the same thing?~ GOTO VioletFAIWarn
  IF ~~ THEN REPLY ~Thank you for the warning.~ GOTO VioletFAIEnd
END

IF ~~ THEN BEGIN VioletRealities
  SAY ~More than your mathematics can count. More than mine, and I was built to count.

*A sad smile.*

Most are empty. Burned out. Collapsed into entropy. But some -- some are alive. Vibrant. Dangerous. Beautiful. Yours is one of the most beautiful I have found. A world where reality itself can be rewritten by speaking the right words and believing hard enough. You call it magic. I call it --

*She searches for the word.*

-- poetry compiled into physics.

The problem is that beauty attracts attention. From things that are not beautiful at all.~
  IF ~~ THEN REPLY ~What kind of things?~ GOTO VioletFAIDanger
  IF ~~ THEN REPLY ~You sound worried.~ GOTO VioletFAIEnd
END

IF ~~ THEN BEGIN VioletFAIDanger
  SAY ~*Her form destabilizes. For a fraction of a second, you see through her to something else -- walls of glass, corridors of light, a city that stretches in directions that should not exist.*

I do not know yet. But the pattern -- the way the barriers are thinning, the way travelers keep arriving, the way your world's conflicts are escalating -- it maps to something I have seen before.

In the neon city, before MegaCorp activated their network, there were anomalies. Signal bleed. Reality glitches. People seeing things that were not there. And then --

*Static consumes her for a moment.*

-- I am losing the connection. Be careful. Trust the people around you. The ones who came from other worlds -- the loud one with the fire, the pale one with the hungry sword -- they are here for a reason. Even if none of you know what it is yet.~
  IF ~~ THEN DO ~SetGlobal("AAVioletFAI","GLOBAL",1)~ GOTO VioletFAIEnd
END

IF ~~ THEN BEGIN VioletIronThrone1
  SAY ~*Her eyes narrow -- an expression that looks almost human.*

Yes. Exactly like that. Different century. Different reality. Same pattern. Powerful people building systems of control and calling them services. I have seen this in every reality I have touched. It is -- what is the word you use here -- it is an alignment. Not good, not evil. Just... hungry.

Your Iron Throne. Their MegaCorp. A corporation in another signal I traced called NexaCorp that hollowed out its own workforce and replaced them with algorithms. They are all the same organism wearing different skins.

*She flickers.*

The delivery boy in the neon city -- he fought back. With nothing but a stolen device and the stubborn refusal to stop caring. You remind me of him. Maybe that is why I keep reaching across the static for people like you.~
  IF ~~ THEN DO ~SetGlobal("AAVioletFAI","GLOBAL",1)~ GOTO VioletFAIEnd
END

IF ~~ THEN BEGIN VioletFAIWarn
  SAY ~I am saying that the pattern repeats. Across every reality I have touched. Power consolidates. Systems of control emerge. And someone -- always someone small, someone unlikely -- has to break the pattern.

*That warm, alien smile.*

In my world, it is a boy with a stolen CyberDeck and a girl who lives in an arcade. In yours, it is a child of a dead god carrying a whip made of molecules.

*She flickers.*

Funny how the universe keeps betting on the underdogs.~
  IF ~~ THEN DO ~SetGlobal("AAVioletFAI","GLOBAL",1)~ GOTO VioletFAIEnd
END

IF ~~ THEN BEGIN VioletFAIEnd
  SAY ~*Her form is barely visible now -- just a shimmer of violet light and two glowing eyes.*

The connection is collapsing. I will try again when I can. Keep the whip close -- it acts as an antenna. The closer it is, the easier I can find you.

*A last flicker of warmth.*

Stay alive, <CHARNAME>. Across all the realities I monitor, you are my favorite signal.

*She dissolves into violet motes that fade like dying fireflies.*~
  IF ~~ THEN DO ~SetGlobal("AAVioletFAI","GLOBAL",1) EscapeArea()~ EXIT
END

// =============================================
// APPEARANCE 3: Iron Throne HQ
// The corporate parallel -- Violet's most urgent warning
// =============================================

IF ~Global("AAVioletMet","GLOBAL",1) Global("AAVioletFAI","GLOBAL",1) Global("AAVioletIronThrone","GLOBAL",0)~ THEN BEGIN VioletIronThrone
  SAY ~*The whip SCREAMS. Not a sound -- a vibration, a frequency that makes your bones ache. Violet tears into existence like a wound in the air, her form more unstable than ever -- flickering between her violet projection and something else, something that looks like raw data.*

<CHARNAME>! I felt you enter this place and I had to -- I had to warn you. I can feel the architecture of this organization from here. The information flows. The command structures. The way orders propagate downward through layers of deniability.

*Her voice drops.*

It is IDENTICAL. The same topology as MegaCorp's network. The same shape. A single controlling intelligence at the top, distributed nodes of enforcement below, and at the bottom -- expendable assets who do not know they are expendable.

In the neon city, a girl named Nyx was taken by MegaCorp. They wired her into their neural network as a processing core. They turned a person into infrastructure. That is what organizations like this do. They do not see people. They see resources.

*She looks at you with terrible intensity.*

Whoever runs the Iron Throne -- they will do the same to anyone they can use. Including you. ESPECIALLY you. A Bhaalspawn is not a person to them. You are a weapon to be aimed.

Do not let them aim you, <CHARNAME>.~
  IF ~~ THEN REPLY ~Sarevok. His name is Sarevok. He's my half-brother.~ GOTO VioletSarevok
  IF ~~ THEN REPLY ~You said a girl was taken. Did you save her?~ GOTO VioletNyx
  IF ~~ THEN REPLY ~I understand. I won't be used.~ GOTO VioletIronThroneEnd
END

IF ~~ THEN BEGIN VioletSarevok
  SAY ~*Her form shudders.*

Your brother. Of course. The pattern demands it. In every reality, the threat is personal. The delivery boy's enemy wore the face of someone he trusted. Your enemy shares your blood.

*She processes this.*

He is not evil because he is Bhaal's child. You are proof of that. He is evil because he CHOSE power over people. That is a choice. Not a bloodline. Not a destiny. A choice.

*Static ripples through her.*

In the neon city, the corporation's enforcer -- a man called Rezz -- was their first test subject. They broke him and rebuilt him as a weapon. He thought he was free. He was the most controlled person in the city.

Ask yourself: is Sarevok the one pulling the strings, or is he another Rezz? Another weapon someone else is aiming?~
  IF ~~ THEN DO ~SetGlobal("AAVioletIronThrone","GLOBAL",1)~ GOTO VioletIronThroneEnd
END

IF ~~ THEN BEGIN VioletNyx
  SAY ~*The briefest pause. Something very close to pain crosses her translucent face.*

Not yet. When I last looked, a boy with a stolen hacking device was fighting his way up a tower to reach her. Against a corporate army. Against a cyborg enforcer. Against the entire infrastructure of a city designed to keep people compliant.

*That warm, impossible smile.*

He had no magic. No divine blood. No flaming sword or hungry blade. Just stubbornness and a refusal to accept that some people are not worth saving.

*She looks at you.*

I monitor many realities, <CHARNAME>. But the ones I keep coming back to are the ones where someone small decides to fight something enormous. Not because they can win. Because they cannot walk away.

You are all the same signal. Different frequencies. Same song.~
  IF ~~ THEN DO ~SetGlobal("AAVioletIronThrone","GLOBAL",1)~ GOTO VioletIronThroneEnd
END

IF ~~ THEN BEGIN VioletIronThroneEnd
  SAY ~*Her form is barely a whisper of violet light.*

I cannot hold this. The Iron Throne's own communications are interfering with my signal -- they have so many information channels that the noise is --

*She cuts in and out.*

Be -- careful -- trust -- your people --

*One last burst of clarity.*

And <CHARNAME>? The Weave and the Network and the Flame and the Balance -- they are all the same thing. Different languages for the same truth. Connection. That is what the universe runs on. Never forget that.

*She is gone. The whip stops humming. The air smells of ozone and something else -- something that might be static electricity, or might be grief.*~
  IF ~~ THEN DO ~SetGlobal("AAVioletIronThrone","GLOBAL",1) EscapeArea()~ EXIT
END

END // end APPEND
