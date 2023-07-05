
=== DayThree ===
~ rightDrink = "Berries"
~ rightTopping = "Treat"
VAR Points = 0
-> 1_A

===1_A===
#daythree
#fade
A few days have passed.
#door
Spike comes at the counter. #spiketired #spikeright
You realize that you never saw Olivia after that time when they fought.
The situation is strange, maybe Spike did something, this must be investigated.
~ oliviadisappear = "g"
Spike "Give me a drink please.
He looks like he hasn't slept in ages and he also seems pissed.
You "Coming right up.
->Drinks1

=== Drinks1 ===
#drinks
    *@Good
    ->GoodSpike
    *@Bad
    ->BadSpike
    
=GoodSpike
You serve the usual drink Spike orders.
He starts to drink.
Spike "Thank you, I needed that
#spiketalk #spikenormal
~ Points = Points + 1
->TalkSpike

=BadSpike
You serve the drink to Spike.
He starts to drink.
Spike "Tastes like shit... #spikeangry
#spiketalk
~ Points = Points - 1
->TalkSpike

=TalkSpike
*@Talk
-
    * Heard you and Olivia are having some problems...
    You "I've heard you and Olivia are having some problems.
    ~ Points = Points - 1
    -> 2_B
    *Is Olivia ok?
    You "Is Olivia ok? She hasn't come in a while...
     ~ Points = Points + 1
    -> 2_A

= 2_A

#spiketired
Spike "Oh yeah... she's fine... I think
Spike lowers his voice as he speaks the last words, something is wrong, "I think"? what does he mean?
    * I think?
    You "What do you mean you think?"
    Spike "Did I say that? I didn't mean it.
    -> 3_A
    * Good to hear 
    You "Oh that's good to hear, I was really worried, she didn't seem fine the other day.
    #spikenormal
     ~ Points = Points + 1
    -> 3_A
    * Did you do something to her?
    You "Did you do something to her?
     ~ Points = Points - 1
    -> 2_B

= 2_B
#spikeangry
Spike "We're fine, and it's none of your business anyway.
Spike is visibly upset, why is he so defensive?
    * I'm trying to help you
    You "Sorry man, I'm just trying to help here.
     ~ Points = Points - 1
    -> 3_B
    * I'm just worried
    You "Sorry, I'm just worried about her, she didn't seem fine the other day.
     ~ Points = Points + 1
    -> 3_A

= 3_A
Spike "We had a small fight, everything is fine now... #spikenormal
It seems like he's a bit more calm now.
    * It's weird that she hasn't come here
    You "I'm just asking because it's weird that she hasn't been here in a while... maybe you know why.
    ~ Points = Points + 1
    -> 4_A
    * I thought you killed her ahahah
    You "Oh that's great! I thought you killed her ahahah...
    Spike "Not funny man...

    -> 4_A
    * That's not convincing
    You "That tone is not convincing at all you know...
    ~ Points = Points - 1
    -> 4_A
    
= 3_B
Spike "Did someone ask for your help? #spikeangry
He looks furious, like the other day with Olivia...
All of a sudden you feel a void in your stomach.

    * Chill down
    You "Jeez man, chill down, you're overreacting, I'm just concerned about Olivia.
    Spike "Are you deaf or something? I just told you we're fine... she's fine...
    He doens't look angry anymore, more... sad
     ~ Points = Points - 1
    -> 4_A
    * The situation doesn't look good for you
    You "Look, the thing is, you two argued, she left, you followed her, then she disappeared, it doesn't look good for you.
    Spike "You must be joking... 
    -> 4_A
    
= 4_A
Spike sips the last liquor left in the glass, it's difficult to understand his emotions...#spikenormal
    * You don't know what happened to Olivia?
    You "So you know nothing about what happened to her after that night?
    Spike "Can you stop harrasing me with questions?#spikeangry
     ~ Points = Points - 1
    ->5_A
    * Want another drink?
    You "Do you want another drink? it's on the house.
    Spike "...yeah, that would be great, thanks...
     ~ Points = Points + 1
     ->Drinks2
     
=== Drinks2 ===
#drinks
    *@Good
    You serve the drink again, you put a bit more liquor this time, maybe it'll help him open up.
    Spike empties the glass in one shot
    Spike "Nice...
    ~ Points = Points + 1
    ->5_A
    *@Bad
    You serve the drink again, you put a bit more liquor this time, maybe it'll help him open up.
    Spike empties the glass in one shot
    #spikeangry
    Spike "This sucks...
    ~ Points = Points - 1
    ->5_A

===5_A===
{
- Points < 3 : ->Bad
- Points >= 3 : ->Good
}

= Bad
Spike is still upset, he probably won't tell you anything today.
He takes some coins from his pocket, leaves them on the counter.
Then he gets up and goes away, without saying a word. #door #spikeout
You got nothing from this conversation, you feel down...
    -> EndDayThree

= Good
Spike's face seems more relaxed.#spikenormal
Spike "I really don't know what happened to her you know...
He seems like he's about to cry
Spike "We got into that fight... stupid fight
Spike "Then she left... I tried to chase her, I was upset, but I wanted to say sorry...
Spike "When I went out she was already gone... and I haven't heard from her since... #spikesad
He starts to cry, his eyes are full with pain
Spike "I can't think that she just left, something must've happened...

Spike continues to cry over his glass...
~ oliviadisappear = "all"
    * I'll discover what happened
    You "I know I'm just a barista, but I will discover what happened to her and you'll get her back... I promise
    Spike "Thanks man... I'll tell you if I know something
    Spike gets up and leaves the tavern, you know he was sincere.#door #spikeout
-> EndDayThree

    * She probably just left you
    You "She probably just left you and doesn't want to see you again, I know you treated her wrong...
    Spike "Douchebag...
    Spike gets up and leaves, slamming the door after him.
    ~ Points = 0
    #doorstrong #spikeout
-> EndDayThree

=EndDayThree
The night is quiet today, it looks like no one else is coming, which also adds to the whole situation.
You are puzzled by the information you got in the last few days...
You need time to think it through
#endday
*@close
-> DayFour