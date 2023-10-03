===DayTwo===
#daytwo
#fade
#wait
VAR VickyPoints = 0
It's a new evening at work, you spent the afternoon setting up a wall to keep clues in the back.
You decided that you will use it to keep track of what you discover about the whole matter.
#clues
#open
#wait
You are still wondering about this whole situation. Crimes, weird behaviors, everything is weird.
A chill comes up your spine...
Who is behind all of this? And what's their motive?

As you are lost in your thoughts, Vicky comes in. #door
She sits at the counter, with her usual  mysterious attitude. #vickyleft
~ rightTopping = "Fishy"
~ rightDrink = "Fish"
Vicky "Hi Hiro, what are you up to these days?
*"What are YOU up to?"
You "Don't worry about me, what are YOU up to instead?"
->questions
*"Playing detective it appears"
You "I'm stealing your job it appears... trying to figure out some stuff.
->detective

=questions
Vicky "Oh... always so mysterious Hiro, I'm the detective here, you stealing my job? #vickyflirt
Vicky "Nothing much by the way, some cases to solve as always... #vickynormal
~ VickyPoints = VickyPoints + 1
She's flirtatious as always... maybe you could use it to your advantage. 
Vicky is a private investigator, maybe she knows something.
*"What kind of cases?"
You "What are you investigating lately?
->cases
*"You are the mysterious one here Vicky, I always wanted to know more about you"
You "You are the mysterious one here Vicky, I always wanted to know more about you..."
->flirt

=detective
Vicky "Hm... that's interesting, I want to know more... #vickyflirt
*"Maybe we can exchange some info..."
You "Maybe we can exchange some info, you tell me something, I tell you something...
->cases
*"You are the mysterious one here Vicky, I always wanted to know more about you"
You "Let's not talk about me... You are the mysterious one here Vicky, I always wanted to know more about you..."
->flirt

=cases
Vicky "Oh Hiro dear, I wouldn't tell my secrets so carelessely #vickyflirt
As you talk someone enters the tavern #door
You can't recognize them, someone new? #shadyfigure #vickynormal
~ shadyfigure = true
They sit down at the table in the back.
Vicky also raised her guard, she is a good detective after all...
Vicky "Give me a drink please
->Drinks3

=flirt
Vicky "It's my job to be... especially nowadays, you know... #vickyflirt
She looks like she's opening up.
~ VickyPoints = VickyPoints + 2
As you talk someone enters the tavern #door
You can't recognize them, someone new? #shadyfigure #vickynormal
~ shadyfigure = true
They sit down at the table in the back.
Vicky also raised her guard, she is a good detective after all...
Vicky "Give me a drink please
->Drinks3

=== Drinks3 ===
#drinks
    *@Good
    ->GoodVicky
    *@Bad
    ->BadVicky
    
=GoodVicky
You serve the drink to Vicky, always keeping an eye to the shady figure in the back. #vickynormal
Vicky "Thank you, it's good as always
~ VickyPoints = VickyPoints + 1
->talkVicky

=BadVicky
You serve the drink to Vicky, always keeping an eye out for the shady figure in the back. #vickynormal
Vicky "Did you change the recipe? It's really horrible...
->talkVicky

=talkVicky
#vickytalk
*@Talk
->talkVicky2

=talkVicky2
*"A lot has happened in town lately... do you know something?
You "A lot has happened in town lately... do you know something about it?"
->askVicky
*"You are such a good investigator Vicky, for not opening up so easily"
You "You are such a good investigator Vicky, for not opening up so easily... so diligent
->flatter

=flatter
Vicky "You flatter me Hiro... you are a good barista. We make a nice team... you know. #vickyflirt
~ VickyPoints = VickyPoints + 1
You smile at Vicky, she's always so charming....
But your goal is another one.
->talkVicky2

=askVicky
{
- VickyPoints < 3 : ->NoInfo
- VickyPoints >= 3 : ->Info
}
=NoInfo
Vicky "I'm sorry Hiro, can't disclose anything... #vickynormal
Nothing... You feel disappointed, you coud've gotten something from her.
->MaxIn

=Info
Vicky "Well... there is something I can tell you actually... #vickynormal
Vicky "Yesterday I was passing by Samantha's gym...
Vicky tries to whisper as low as she can, getting closer to you.
You feel her breath on your ear.
Vicky "And I saw Charlie making a delivery... which might sound normal.
Vicky "What's suspicious is that they were in the dark alley next to the gym...
Vicky "and they were exchanging this package very secretely...
~ charliesampack = true
What could this mean? That's such a weird behavior...

Vicky "That's all I can tell you...
Vicky moves away from your ear, you feel like this information might be important.
->MaxIn

=MaxIn
~ rightTopping = "Fishy"
~ rightDrink = "Herbs"
As you finish talking Max walks in #door
He sits down at the counter next to Vicky #maxright #vickynormal

Max "Hello people, such a nice evening isn't it?
Max is always so joyful
Vicky "Why so happy today Max?
Max "Can't I be happy? Everything is going well, life is great, you both should try to smile more actually
Vicky "No thanks... 
*"Want a drink?"
You "Do you want a drink Max?
Max "Oh yes, thanks, the usual.
*"Happiness doesn't come easy"
You "Happiness doesn't come so easily Max...
Max "Oh boo hoo, you need to find happiness, it won't come by itself.
Max "And about that, give me a drink please
-
->Drinks4

=== Drinks4 ===
#drinks
    *@Good
    ->GoodMax
    *@Bad
    ->BadMax
    
=GoodMax
You serve the drink to Max.
He sips it lightly as he usually does.
Max "Thank you, that's happiness right there.
->accusation
=BadMax
You serve the drink to Max.
He sips it lightly as he usually does.
Max "Disgusting... your sadness reflects in your drinks love...
->accusation

=accusation
As you are talking the person in the back gets up and leaves... #shadyfigureout #door
You all turn around to watch them...
Max "Who's that by the way?
You and Vicky shrug your shoulders in ignorance.
Vicky "So why are you so happy Max? tell us the truth...
Vicky "Things are happening in town, you must've noticed... how can you be so carefree, hm?
You can see the detective coming out from Vicky... she really is good
Max appears tense all of a sudden. #maxtense
Max "Wh-what do you mean? Of course I know about the crimes...
Max "I'm just happy because my fashion business is going great these past few days... I think it's right to be satisfied by that.
That's weird, everyone is having trouble at work and Max seems to be the only one with good results...
You can see in Vicky's face that she thinks the same thing, she must know a lot of the things you also know.
Vicky "Hm... ok birdy...
Max "I have to go now
Max gets up and leaves, after paying you for the drink #maxout #door #maxnormal
~ max = true
You and Vicky share a look of agreement, no words are needed.
Vicky "I'll go too
She also gets up, gives you a tip and leaves #door #vickyout

Maybe she went to follow him in the shadows, to discover more... who knows.

The situation here gets more cryptic by the day...
You close the tavern, it's gotten late.

#endday
#clues
*@close
->DayThree