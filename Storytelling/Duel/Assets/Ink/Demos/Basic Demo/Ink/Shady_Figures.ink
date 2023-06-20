->DayOne
=== DayOne ===
VAR rightDrink = "Carrot"
VAR rightTopping = "Veggies"

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
-> END
=== Drinks ===
#drinks
    *@Good
    ->Good
    *@Bad
    ->Bad
    
=Good
    You serve the drink...
    Charlie sips his drink slowly, closing his eyes as he tastes it
    Charlie "...That's what I needed, thank you
    #charlienormal
    -> Talk

=Bad
    You serve the drink...
    Charlie sips his drink slowly, but he stops as soon as he can taste it
    #charlietired
    Charlie "Did you change some ingredients?... It's not that good... Anyway I'll drink it...
    #charlienormal
    -> Talk
    
=Talk
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
    Samantha "He's always snapping at Olivia for the smallest stuff, he deserves a lesson for that. The poor girl is too nice to break up with him.
    Samantha "I don't even know why she got with him in the first place, he's an asshole...
    Charlie "He really is...
    Charlie "By the way Sam, I got a delivery for your gym tomorrow, are you there at three?
    Samantha "Yeah, I'm there all day as always, money don't make themselves
    Samantha gets up to leave, she seems in a rush
    Charlie "Already going? Not even a drink?
    Samantha "Just wanted to say hi, bye Charlie, bye Hiro #samanthaout #door 
    You wave at her as she leaves the tavern. You realize it's actually gotten late with your chats 
    Charlie drinks his last sipp fo liquor, then he also gets up 
    Charlie "I should go too, tomorrow is another day at work, hoping it would be better than today.
    He gets some change from his pocket and leaves it on the counter, then he leaves #charlieout #door 
    
    It was a chill night
    As you close up the tavern you still wonder about Spike's matter. He really seems like he's hiding something.
    
    #daytwo
INCLUDE Storytelling\DayThree.ink

->END
    
