->DayThree
=== DayThree ===
VAR Points = 0
Your shift at the tavern is almost finished, the only people left are Ivor and Jenny. 
They are chatting and flirting as always.

But at some point, while you're washing the dishes, you notice that they are starting to argue.
They raise their voice...
Jenny "I'm done with you!
Jenny rushes out of the tavern. Ivor is fuming, as he gets up, he smashes the chair on the ground, then follows Jenny outside.
-> 1_A

===1_A===
A few days have passed and you never saw Jenny after that time.
The siuation is strange, maybe Ivor did something, this must be investigated.

Ivor comes at the counter.
Ivor "Give me a drink please.
He looks like he hasn't slept in ages and he also seems pissed.
You "Coming right up.

You pour the usual liquor Ivor drinks into a glass, put some ice, then serve it to him.

He starts to drink.

    * Heard you and Jenny are having some problems...
    You "I've heard you and Jenny are having some problems, is everything ok?
    ~ Points = Points - 1
    -> 2_B
    *Is Jenny ok?
    You "Is Jenny ok? She hasn't come in a while...
     ~ Points = Points + 1
    -> 2_A

= 2_A
Ivor "Oh yeah... she's fine... I think
Ivor lowers his voice as he speaks the last words, something is wrong, "I think"? what does he mean?
    * I think?
    You "What do you mean you think?"
    Ivor "Did I say that? I didn't mean it.
    -> 3_A
    * Good to hear 
    You "Oh that's good to hear, I was really worried, she didn't seem fine the other day.
     ~ Points = Points + 1
    -> 3_A
    * Did you fight?
    You "Did you fight with her?
     ~ Points = Points - 1
    -> 2_B

= 2_B
Ivor "We're fine, and it's none of your business anyway.
Ivor is visibly upset, why is he so defensive?
    * I'm trying to help
    You "Sorry man, I'm just trying to help here.
     ~ Points = Points - 1
    -> 3_B
    * I'm just worried
    You "Sorry, I'm just worried about her, she didn't seem fine the other day.
     ~ Points = Points + 1
    -> 3_A

= 3_A
Ivor "We had a small fight, everything is fine now...
It seems like he's a bit more calm now.
    * It's weird that she hasn't come here
    You "I'm just asking because it's weird that she hasn't been here in a while... maybe you know why.
     ~ Points = Points + 1
    -> 4_A
    * I thought you killed her ahahah
    You "Oh that's great! I thought you killed her ahahah...
    Ivor "Not funny man...
     ~ Points = Points - 1
    -> 4_A
    * That's not convincing
    You "That tone is not convincing at all you know...
    -> 4_A
    
= 3_B
Ivor "Did someone ask for your help?
He looks furious, like the other day with Jenny...
All of a sudden you feel a void in your stomach.

    * Chill down
    You "Jeez man, chill down, you're overreacting, I'm just concerned about Jenny.
    Ivor "Are you deaf or something? I just told you we're fine... she's fine...
    He doens't look angry anymore, more... sad
     ~ Points = Points - 1
    -> 4_A
    * The situation doesn't look good for you
    You "Look, the thing is, you two argued, she left, you followed her, then she disappeared, it doesn't look good for you.
    Ivor "You must be joking... 
    -> 4_A
    
= 4_A
Ivor sips the last liquor left in the glass, it's difficult to understand his emotions...
    * You don't know what happened to Jenny?
    You "So you know nothing about what happened to her after that night?
    Ivor "Can you stop harrasing me with questions?
     ~ Points = Points - 1
     -> 5_A
    * Want another drink?
    You "Do you want another drink? it's on the house.
    Ivor "...yeah, that would be great, thanks...
    You pour the liquor again, untill the glass is filled, no ice this time
     ~ Points = Points + 1
     -> 5_A

= 5_A
{
- Points <= 3 : ->Bad
- Points >= 3 : ->Good
}

= Bad
Ivor is still upset, he probably won't tell you anything today.
He takes some coins from his pocket, leaves them on the counter.
Then he gets up and goes away, without saying a word.
You got nothing from this conversation, you feel down...
    -> END

= Good
Ivor's face seems more relaxed.
Ivor "I really don't know what happened to her you know...
He seems like he's about to cry
Ivor "We got into that fight... stupid fight
Ivor "Then she left... I tried to chase her, I was upset, but I wanted to say sorry...
Ivor "When I went out she was already gone... and I haven't heard from her since...
He starts to cry, his eyes are full with pain
Ivor "I can't think that she just left, something must've happened...

Ivor continues to cry over his glass, sips some liquor...

    * I'll discover what happened
    You "I know I'm just a barista, but I will discover what happened to her and you'll get her back... I promise
    Ivor "Thanks man... I'll tell you if I know something
    Ivor gets up and leaves the tavern, you know he was sincere.
-> END

    * She probably just left you
    You "She probably just left you and doesn't want to see you again, I know you treated her wrong...
    Ivor "Douchebag...
    Ivor gets up and leaves, slamming the door after him.
    He wasn't helpful in any way.
-> END