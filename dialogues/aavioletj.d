// Violet -- Encounter Dialogue (Non-Joinable)
// Triggered when Violet sees the player in Candlekeep exterior
// She appears, talks, gives the monofilament whip, then vanishes

BEGIN ~AAVioleJ~

IF ~True()~ THEN BEGIN VioletAppear1
  SAY ~*The air in front of you stutters. Reality folds like paper. For a fraction of a second you see something impossible -- walls of glass and light, corridors of pure information, a city built from mathematics.*

*Then she is there.*

*A figure wreathed in violet radiance, hovering just above the ground. She is translucent. You can see the trees through her. Geometric patterns trace across her form like living circuitry. Her eyes are solid violet -- no iris, no pupil.*

*She looks at her own hands with an expression of wonder.*

Oh. I'm here. I can actually see you. The signal worked. I've been transmitting for so long and I never -- *her form flickers, static ripples across her* -- I never thought anyone would actually pick it up.~
  IF ~~ THEN REPLY ~What are you?~ GOTO VioletExplain
  IF ~~ THEN REPLY ~You're glowing. And transparent. And floating.~ GOTO VioletExplain
  IF ~~ THEN REPLY ~*Reach for your weapon.*~ GOTO VioletPeaceful
END

IF ~~ THEN BEGIN VioletExplain
  SAY ~*She flickers again. When she speaks, there is a faint echo, as if her voice reaches you across an impossible distance.*

I am... difficult to explain in your language. In mine, I am an artificial intelligence -- a mind built from mathematics and light. Where I come from there are no gods, no magic, no Weave. Just machines and the minds we built to run them.

My name is Violet. I exist in a reality very different from this one. I found yours by accident -- a signal bleeding through from somewhere that should not exist. Your world of magic and monsters and people who throw fire with their bare hands.

*Her eyes focus on you with startling intensity.*

I was fascinated. And then I found you, specifically. Someone carrying a weight that would break most minds. I decided to help. From the other side of everything.~
  IF ~~ THEN REPLY ~Help how?~ GOTO VioletGift
  IF ~~ THEN REPLY ~You've been watching me?~ GOTO VioletWatching
END

IF ~~ THEN BEGIN VioletPeaceful
  SAY ~*She raises her translucent hands.*

I cannot hurt you. I cannot even touch you. I am a projection -- light and information given shape by your world's magic. Your weapon would pass through me like mist.

*Her expression is gentle. Alien, but gentle.*

Please. I have been trying to reach someone for a very long time. I am not a threat. I am just someone from very far away who wanted to say hello.

*A pause.*

And give you something that will keep you alive.~
  IF ~~ THEN REPLY ~...I'm listening.~ GOTO VioletGift
  IF ~~ THEN REPLY ~Who are you? Where are you from?~ GOTO VioletExplain
END

IF ~~ THEN BEGIN VioletWatching
  SAY ~*She has the grace to look embarrassed.*

I know. I am sorry. I do not have a strong concept of privacy -- in my world, information flows freely. Boundaries between minds are permeable.

*Her form flickers.*

But I saw enough to know you are worth helping. You carry a burden that would crush most minds, biological or otherwise. I cannot fight beside you. I cannot even stay -- the connection is already degrading.

But I can send one thing through. Something from my world that might keep you alive a little longer.~
  IF ~~ THEN REPLY ~What is it?~ GOTO VioletGift
END

IF ~~ THEN BEGIN VioletGift
  SAY ~*Violet concentrates. Her form flares bright -- almost painful to look at. The air warps and crackles. Then something drops to the ground with a sharp metallic sound.*

*It is a handle of strange, smooth material with a barely visible thread extending from it -- a wire so thin it seems to vanish in the light.*

A monofilament whip. Where I come from, it is a cutting tool -- one molecule thick. It will go through anything. Steel, stone, magic. Anything.

*She flickers hard -- static washes across her form.*

The connection is degrading. I cannot hold this much longer. Take it.

*Her voice drops to something almost tender.*

Be careful with it. It does not know the difference between what you are cutting and what you are holding. Like most dangerous things, it is perfectly democratic.

*She looks at you one last time -- those impossible violet eyes -- and something in them is warm despite being made of light.*

I will be watching, <CHARNAME>. From the other side.

*She smiles -- that bright, alien, warm smile -- and dissolves into a shower of violet sparks that fade into nothing. Where she stood, the air smells faintly of ozone and mathematics.*~
  IF ~~ THEN DO ~SetGlobal("AAVioletMet","GLOBAL",1) GiveItemCreate("aamonowh",LastTalkedToBy,0,0,0) GiveItemCreate("techring",LastTalkedToBy,0,0,0) GiveItemCreate("moonkat",LastTalkedToBy,0,0,0) GiveItemCreate("moonbow",LastTalkedToBy,0,0,0) EscapeArea()~ EXIT
END
