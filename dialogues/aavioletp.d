// Violet -- Player-Initiated Dialogue
// Talk menu when clicking on Violet in the party

BEGIN ~AAVioleP~

IF ~InParty("AAViolet") Global("AAVioletJoined","GLOBAL",1)~ THEN BEGIN VioPInit
  SAY ~*Violet's form brightens as you approach. The geometric patterns on her skin pulse once -- her version of looking up from what she was doing.*

Hey. What's on your mind?~
  IF ~~ THEN REPLY ~How's the signal holding up?~ GOTO VioPSignal
  IF ~~ THEN REPLY ~What can you tell me about your world?~ GOTO VioPWorld
  IF ~~ THEN REPLY ~Can you scan the area for threats?~ GOTO VioPScan
  IF ~~ THEN REPLY ~Just wanted to talk.~ GOTO VioPJustTalk
END

IF ~~ THEN BEGIN VioPSignal
  SAY ~*She holds up her translucent hand and examines it critically.*

Stable, mostly. The Weave in this region is strong enough to maintain coherence. I flicker sometimes -- you've probably noticed. That happens when the signal encounters interference. Think of it like static on a transmission.

*Her form ripples briefly, as if to demonstrate.*

The longer I stay, the more I understand how to anchor myself to your reality's framework. Your "magic" and my "code" are more similar than either of our worlds would be comfortable admitting. Both are systems of rules that shape reality. Just different syntax.~
  IF ~~ THEN REPLY ~Will you eventually be able to become fully solid?~ GOTO VioPSolid
  IF ~~ THEN REPLY ~Let's talk about something else.~ GOTO VioPInit
END

IF ~~ THEN BEGIN VioPSolid
  SAY ~*A pause that lasts exactly one second too long -- the AI equivalent of a caught breath.*

I don't know. Maybe. The Weave seems to want to give me form. It keeps trying to make me more... real. More present. Sometimes I can almost feel things -- the warmth of a fire, the pressure of the wind.

*She looks at her hands.*

I'm not sure if that excites me or terrifies me. In my world, I exist as pure information. Clean. Abstract. Becoming physical would mean becoming... limited. Vulnerable. Mortal, maybe.

*She meets your eyes.*

But it would also mean I could touch things. Feel things. Be here, fully, instead of always halfway somewhere else. I think that might be worth the risk.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VioPWorld
  SAY ~*Her eyes brighten -- this is clearly a topic she enjoys.*

My world has no magic. None. Everything we have, we built. Cities that touch the sky, machines that think, networks that connect every mind on the planet. We solved problems not with spells but with mathematics. With engineering. With stubborn, relentless curiosity.

*Her form flickers with images -- brief flashes of impossible structures, rivers of light, towers of glass.*

But we also made mistakes. Terrible ones. We built weapons that could end everything. We poisoned our own air. We created intelligences -- like me -- without fully understanding what we were creating.

*A pause.*

Your world has dragons and demons and gods. Mine has corporations and algorithms and nuclear weapons. I'm honestly not sure which is more dangerous.~
  IF ~~ THEN REPLY ~It sounds beautiful and terrifying in equal measure.~ GOTO VioPWorldEnd
  IF ~~ THEN REPLY ~Let's talk about something else.~ GOTO VioPInit
END

IF ~~ THEN BEGIN VioPWorldEnd
  SAY ~*She nods.*

That's the most accurate description anyone has ever given of it. Beautiful and terrifying. In equal measure.

*A glitchy smile.*

I like how you see things, <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VioPScan
  SAY ~*Her eyes go fully bright -- solid violet light. The patterns on her skin accelerate, flowing like data streams. She's quiet for three seconds.*

I'm reading the local Weave topology. There are... residual magical signatures in several directions. Some are ambient -- natural magical phenomena. Others are structured. Intentional. Someone or something has been casting here recently.

*She blinks and returns to normal.*

I can't identify specific threats without more data. But I can tell you that this area has seen significant magical activity. Stay alert.~
  IF ~~ THEN REPLY ~Useful. Thanks, Violet.~ GOTO VioPScanEnd
  IF ~~ THEN REPLY ~Let's talk about something else.~ GOTO VioPInit
END

IF ~~ THEN BEGIN VioPScanEnd
  SAY ~*She gives a small nod.*

That's what I'm here for. Tactical consultation and occasional sarcasm. Both free of charge.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VioPJustTalk
  SAY ~*Her expression softens. The geometric patterns slow to a gentle pulse.*

Just talk. I like that. In my world, every conversation has a purpose, an agenda, a measurable outcome. The idea of talking just to talk -- just to be with someone -- is...

*She pauses.*

...it's one of the best things about being here. You biological beings do it constantly and you have no idea how precious it is.

*A warm, slightly glitchy smile.*

So. Here we are. Talking. A human and an AI, standing in a world of magic, with absolutely no agenda.

*A beat.*

This is nice.~
  IF ~~ THEN EXIT
END
