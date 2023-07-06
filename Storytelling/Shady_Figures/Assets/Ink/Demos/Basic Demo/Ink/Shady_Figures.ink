
INCLUDE Storytelling\DayThree.ink
INCLUDE Storytelling\DayTwo.ink
INCLUDE Storytelling/DayFour.ink


->finishday1
=== DayOne ===
VAR rightDrink = "Carrot"
VAR rightTopping = "Veggies"
VAR spikedelivery = "none"
VAR crimes = "none"
VAR charliesampack = false
VAR max = false
VAR shadyfigure = false
VAR oliviadisappear = "none"
#fade
#dayone
You are cleaning the last few dirty glasses left from last night,
You already tidied up the whole tavern as well as you could, and customers should start to come in in minutes. 
#door

As you are drying the last glass you hear the door open, it's Charlie, he always comes to your place when he gets off work. 
Charlie sits at the counter. #charlieright #charlietired

Charlie "Evening Hiro, how's it going?
You shrug your shoulders, as to say "like always".
Charlie seems tired, his usual joyful personality and chattiness isn't coming out today.

    * "Everything ok at work?"
    -> Fine
    * "Want something to drink?"
    -> Drinking

=Fine
 You "Is everything ok? You look like you just escaped from a chasing
 Charlie "Oh yeah don't worry, just a bad day at work...
 
 * "Something happened?"
    -> Fine2
 * "Want something to drink?"
    -> Drinking
    
    
=Drinking
    You "Should I make you the usual drink?
    Charlie?Tired "Yes, I need it
    ->Drinks
    
=Fine2
    You "Did something happen at work?
    Charlie "Just give me the usual drink, please
    You "Coming right up
    -> Drinks

=== Drinks ===
#drinks
    *@Good
    ->GoodCharlie
    *@Bad
    ->BadCharlie
    
=GoodCharlie
    You serve the drink...
    Charlie sips his drink slowly, closing his eyes as he tastes it
    Charlie "...That's what I needed, thank you
    #charlienormal
    -> TalkCharlie

=BadCharlie
    You serve the drink...
    Charlie sips his drink slowly, but he stops as soon as he can taste it
    #charlietired
    Charlie "Did you change some ingredients?... It's not that good... Anyway I'll drink it...
    #charlienormal
    -> TalkCharlie
    
=TalkCharlie
#charlietalk
    *@Talk
-
    * "So bad day huh?"
    You "So... bad day at work huh?
    * "You wanna talk about it now?"
    You "You wanna talk about your thoughts mr mysterious guy?
- Charlie "It's nothing serious really, I just had a hard time delivering a package to the night club, I spent hours there... I swear Spike sometimes can be obnoxious...
  Charlie "and then my boss had something to say about it of course 
    * "What about Spike?"
    ->Spike
    * "What did you deliver?"
    ->Deliver
    
=Spike
You "What about Spike? He works as a bouncer there right?
Charlie looks like he wants to talk now, a few sips of liquor and his good mood is right back.
Charlie "Yah, sometimes he also does other jobs there, takes care of cleaning, takes care of tickets... 
Charlie "or sometimes he takes care of packages arriving
#charlieangry
Charlie "And today he really had something to say about it... he complained for an hour about how the packages needed to be 6, not 5. What am I supposed to do about it? I just deliver
Charlie "So then of course the boss got upset with the fact that I was losing time with that idiot. Spike even snapped at me, I was scared he was about to punch me. Such a big fuss for a package.
This story seems odd, you know Spike can be arrogant, but he doesn't really care about doing his job right...
~ spikedelivery = "b"

    * "What was the delivery?"
    ->Deliver
    #charlienormal
    * "Did he let you go then?"
    You "Did he give up at some point?
    Charlie "Yes, I convinced him that I had nothing to do with it and he gave up, but he seemed really worried about it...
    #charlienormal
    ->Samantha
    
=Deliver
You "What did you deliver to him?
Charlie "I have no idea, I'm not supposed to know the content of packages, I just kow it was real heavy
Charlie "And that's odd, usually the packages for the night club are quite light, probably some cups or napkins...
~ spikedelivery= spikedelivery + "w"
->Samantha

=Samantha
#door
As Charlie is talking you see Samantha entering, as she is sitting at the counter she starts talking right away #samanthaleft 
Samantha "You talking about Spike? That bully is going to get it from me sooner or later. Did he fight with Olivia again?
Charlie "No, he just made my work day hell...
Samantha "Poor bunny, delivery drivers always get the hate for stuff, I'm sorry
    *"Spike and Olivia?"
    You "What about Spike and Olivia fighting?
    *"Why would you want to fight with him?"
    You "Why would you fight with Spike?
    -
    #samanthaangry
    Samantha "He's always snapping at Olivia for the smallest stuff, he deserves a lesson for that. The poor girl is too nice to break up with him.
    Samantha "I don't even know why she got with him in the first place, he's an asshole...
    Charlie "He really is...
    #samanthanormal
    Charlie "By the way Sam, I got a delivery for your gym tomorrow, are you there at three?
    Samantha "Yeah, I'm there all day, I had a few problems lately...
    *"What problems?"
    You "What kind of problems are you having?"
->ProblemsSam

    *"I see we're all having struggles at work
    You "I see we're all having struggles at work... nice
    Charlie and Samantha nod and sigh in agreement
    ->ProblemsSam
    
=ProblemsSam
    Samantha "Two of my employees just decided to quit without notice, they basically disappeared...
    Charlie "Maybe you scared them off with your attitude
    Samantha gives a harsh trheatening look to Charlie #samanthaangry
    
    Charlie "I'm joking I'm joking, actually this town has been quite weird lately #samanthanormal
    Charlie "I've seen some drugs exchange happening in the light of day...
    Charlie "I mean, trafficking has always happened, but now it just looks like they don't care about being seen
    This whole matter is weird to you, Spike being nastier than usual, people disappering, now this...
    You feel the urge to start to investigate more about it.
    ~ crimes = "g"
    ->finishday1
    
===finishday1===
Samantha gets up to leave, she seems in a rush
Charlie "Already going? Not even a drink?
Samantha "Just wanted to say hi, bye Charlie, bye Hiro 
You wave at her as she leaves the tavern. You realize it's actually gotten late with your chats #samanthaout #door 
Charlie drinks his last sip fo liquor, then he also gets up 
Charlie "I should go too, tomorrow is another day at work, hoping it would be better than today.
He gets some change from his pocket and leaves it on the counter, then he leaves #charlieout #door
    
Your shift at the tavern is almost finished, and Spike and Olivia come in. 
#door #spikeright 
You hope they didn't hear your conversation with Charlie and Samantha. #olivialeft
They sit down and you greet them.

You get a bit further away from them as you start washing dishes.

They are chatting and flirting as always.

But at some point, you notice that they are starting to argue.
They raise their voice...
Olivia "I'm done with you! #oliviaangry
Olivia rushes out of the tavern. #doorstrong #oliviaout #spikeangry
Spike is fuming, as he gets up, he smashes the chair on the ground, then follows Olivia outside. #spikeout #doorstrong

Four customers and only one drink... what a day...
You think that Samantha was right, they are always arguing, and Olivia seems the abused one here.
You decide to keep track of all the weird happening from now on 
It could be nothing... but your guts is telling you otherwise, something's off here
#endday
*@close
->DayTwo

    
