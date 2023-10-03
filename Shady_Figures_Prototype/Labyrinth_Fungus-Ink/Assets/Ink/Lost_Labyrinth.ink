
-> Arrival

=== Arrival ===

It's night time, a thin fog is around you.
You are on the side of the street, no one is here, the road is dark and quiet.
You "The address is right, is it?
You check on your phone: "Ethan: Party is at 23 Groove Street, see you there"
You lift your face and big villa is in front of you, while a sign saying "23 Groove Street" lays on the ground.

You "It must be right.

* Go closer to the building to check
    -> Entrance
* Call Ethan to be sure
    -> Dead_phone
    
= Dead_phone
    You lift your phone up, go to the contacts and click on Ethan's number.
    You're about to get your phone to your ear when it suddenly turns off.
    
    You "Fuck, why didn't I charge it before coming?... So dumb
    You "Anyway, the place must be this one...
    
    * {not Entrance} Go closer to the building to check
    ->Entrance
    * {Entrance} Knock
    -> Knock
    * {Entrance} {not Window} Peak through window
    -> Window
    * {Entrance} Try to open the door
    ->Enter
    
= Entrance
    You start to approach the house,
    You notice it looks very old and the wood of the entrance stairs and windows seems almost... rotting.
    You "Does someone really live here?
    
    You proceed towards the main door,
    a shiver makes its way up your spine. It's cold, but there's something else about this place...
    
    You arrive at the door after walking up the squeaky stairs.
    
    * Knock
    -> Knock
    * Peak through window
    -> Window
    * Try to open door
    -> Enter
    * {not Dead_phone} Call Ethan to be sure
    -> Dead_phone
    
    
= Knock
    You knock at the door {three times | harder | again} ...
    
    ...
    
    Nothing...
    
    + Knock again
    -> Knock
    * {not Window} Peak through window
    -> Window
    * {not Dead_phone} Call your friend to be sure
    -> Dead_phone
    * Try to open the door
    -> Enter
   
 
= Window
    There's a window near the door, a feeble light peaks through it.
    You get closer and peak through it.
    You see a corridor, it's dark, but there are some lights here and there... you move your gaze around the hallway.
    No one is here.
    You "Maybe they are all already inside
    
    * Knock
    -> Knock
    * Try to open door
    -> Enter
    * {not Dead_phone} Call your friend to be sure
    -> Dead_phone
    
    
= Enter
    -> Inside

=== Inside ===
VAR Closed_door= false
VAR Slither_sounds= false
VAR Weapon= false
VAR Wounded= false
VAR Key_2= false
VAR Grabbed_Leg= false
You push down the door handle, and to your surprise the door is unlocked.
The door slowly opens up, screeching louder and louder, untill it's fully open.
You go inside and a hallway stands before you, some lights slightly light up the room.
You can see two doors at either side of the corridor, and a bigger one right at the end in front of you.
The door at your left is slightly open, while the two other ones stay closed shut.

* Go to the door at your left
-> Living_Door
* Go to the door at your right
-> Library_door
* Go to the door at the end of the corridor
   You slowly approach the big door at the end of the hallway.
-> Main_Hall_Door

= Corridor
{Wounded: you move slowly, the pain on your side is atrocious}
~ From_dining= false
    You are in the corridor, you wonder which way to go next, you need to find your friends.
    + {Library_door and not Library} Go to the door at your right again
    -> Library_door
    + {not Key_1 and Library} Go back to the library and grab the book
    You go back in the library
    -> Key_1
    + {not Library_door} Go to the door at the right
    -> Library_door
    + {Key_1} Go back to the library
    You go back in the library
    -> Nothing_Here
    + {not Main_Hall_Door} Go to the door at the end of the corridor
    You slowly approach the big door at the end of the hallway.
    -> Main_Hall_Door
    + {Main_Hall_Door and not Main_Hall} Go to the door at the end of the corridor again
    -> Main_Hall_Door
    + {Main_Hall} Go to the Main Hall again
    -> Main_Hall
    + {not Living} Go to the door at your left
    -> Living_Door
    + {Living} Go back in the living room
    -> Living
    + {Closed_door} Try to open the entrance door and escape
    {You try to open the main door, but it's close shut | No matter how hard you try the door doesn't open}
    ->Corridor
    
= Library_door
{Wounded: you move slowly, the pain on your side is atrocious}
    You approach the small door that stands at your right, the floor screeches under your feet.
    {
    -not Closed_door: While walking the entrance door behind you suddenly closes, you get startled and the smashing sound echoes around you... 
    You "Fucking Ethan, I'm gonna kill you when I find you
    }
    ~ Closed_door= true
    Arrived at the door you {try to open it, and it does. |open it}
    The room is pitch black, you can't help but imagine what could lie in the darkness.
    The least rational thoughts make their way in your mind, and you start to shiver.
    A smell comes from the room, it feels... humid

    {Suddenly a noise, a sharp metallic sound. It sounds like a small object hitting the ground, then rolling away. It might be something that you moved when opening the door, or maybe not... | }

    * Feel for a light switch on the side of the door
    -> Light_library
    * Close the door and move away
    -> Corridor

= Light_library
    You slide your hand on the wall near the door and try to feel if there's a light switch.
    YES! 
    You push the switch.
    The lights turn on, your eyes slowly adjust to the sudden brightness.
    When you can finally see clearly again you notice that the room appears safe, even if shabby.
    
    It's a library room, lots of old books are on the big shelves... old books, you now understand that the smell you felt was the moldy paper.
    
    No one is in here, it's just a fairly empty and small room.
    
    * Go inside and investigate
    -> Library
    * Close the door and move away
    -> Corridor

= Library  
    #LIBRARY
    {Wounded: you move slowly, the pain on your side is atrocious}
    You walk inside the small room, you suddenly step on something. 
    Looking down you see it's a bolt. It's probably what fell on the ground earlier. You feel relieved.
    
    You look at the books on the shelves, they are dusty, and the smell is now annoying you.
    At some point you realize one of the books seems newer, less dusty... it definetely stands out.
    It could be somethng dangerous...
    
    * Grab the book
    -> Key_1
    * Go back out
    -> Corridor
    
= Key_1
    While you grab the book your guts feel like they are twisting inside your stomach, you irrationally feel like something is going to happen...
    You look at the book cover: "Enter the unknown".
   You "That's... 
    * Captivating
    You "That's... captivating
    * Boring
    You "That's... boring
    * Scary
    You "That's... scary
    
    -You then open the book, to your surprise there are no actual pages, it's more like a box, and inside there's a key.
    
    You don't really know what it opens, but you take it, then put the book back where it was.
    
    * {not Grabbed_Leg} Keep Looking
    -> Grab_Leg
    * {Grabbed_Leg} Keep Looking
    -> Nothing_Here
    * Go out
    -> Corridor

= Grab_Leg
 You look around a little more, but there is not much else that seems interesting.
 Suddenly something grabs your leg and you fall to the ground
 You quickly look around and can only see a small shadow moving fast through the door
 You "What the hell was that? Fucking Ethan, if this is a prank... 
 You get up.
  ~ Grabbed_Leg= true
 + Keep Looking
 -> Nothing_Here
 + Go out
 -> Corridor
 
= Nothing_Here
 {There's nothing else that gets your attention.| ...the room is quiet | You "I should probably go somewhere else}
 + Keep Looking
 -> Nothing_Here
 + Go out
 -> Corridor
 
    
= Main_Hall_Door
{Wounded: you move slowly, the pain on your side is atrocious}
    {
    -not Closed_door: While walking the door entrance behind you suddenly closes, you get startled and the smashing sound echoes around you... 
    You "Fucking Ethan, I'm gonna kill you when I find you
    }
    ~ Closed_door= true
    {not Slither_sounds: You can hear sinister sounds around you, but you can't quite figure out their source... it sounds like something slithering slowly around, maybe water, maybe some creature?} 
    {Slither_sounds: You can still hear the slithering sounds of before, they are even louder, thinking about it makes you nauseous...}
    ~ Slither_sounds= true
    
    You arrive at the door
    * {Key_1} Try to open it
    You try to get it to open, but it's shut, you decide to use the key you found earlier and... 
    You "It works!
    -> Main_Hall
    + {not Key_1} Try to open it
    -> Try_Open
    + Go back
    -> Corridor
= Try_Open
  {You try to get the door to open but there's nothing to do, it's closed shut | You try to open it, nothing to do...}
  + Try again
  -> Try_Open
  + {not From_dining} Go back
  -> Corridor
  + {From_dining} Go back
  -> Dining_Door1
  
= Main_Hall 
 #MAIN HALL
 {Wounded: you move slowly, the pain on your side is atrocious}
    {The door creaks open, a big hall stands before you, there's a statue at the center. It looks like an angel, but its eyes are covered by a cloth... Lady Luck! The Blindfolded Goddess! That's a nice statue| The statue is still standing there}
    Two staircases stand at the side of the marble giant, you can see they curve and meet at the end, they probably lead to the same upstairs space.
    At the sides of the room you can see two doors.
    
    * Go upstairs
    -> Second_Floor
    + {not Bedroom_Door} Go to the room on the right
    -> Bedroom_Door
    + {not Dining_Door2} Go to the room on the left
    -> Dining_Door2
    + {Bedroom_Door} Go to bedroom
    -> Bedroom
    + {Dining_Door2} Go to the dining room
    -> Dining_Door2
    + Go back to the corridor
    -> Corridor  
  
= Living_Door
{Wounded: you move slowly, the pain on your side is atrocious}
{
-not Closed_door: While walking the door entrance behind you suddenly closes, you get startled and the smashing sound echoes around you... 
You "Fucking Ethan, I'm gonna kill you when I find you
}
    ~ Closed_door= true
    You approach the door that stands at your left, it's slightly open.
    From the crack you can only see darkness, but there's a feeble light that moves some shadows around. It's probably a candle.
    * Push the door open
    -> Living
    + Go back
    -> Corridor
 
= Living
    {You push the door open | You enter the living room again}
     #LIVING ROOM
    The room is slithly lit by a few candles that hang from the walls.
    {At the center of the room there's a couch, which looks surprisingly clean and tidy, differently from the rest of the house.|}
    {In front of it stands a fireplace, in it some burnt wood still crackles.|}
    {You "So it is the right place, but where did they go?|}
    
    {
    -not From_dining:
    To the other side of the room there's a door, your guts twirl when looking at it... but you don't know why...
    +{not Dining_Door1 and not Dining_Door2}Go to the door
    -> Dining_Door1
    +{Dining_Door1 or Dining_Door2}Go in the dining room
    -> Dining_Door1
    +Go back
    -> Corridor
    }
    
    {
    -From_dining:
    +Go in the corridor
    ~ From_dining= false
    -> Corridor
    +Go back in the dining room
    ~ From_dining= false
    ->Dining_Door1
    }
    
VAR From_Hall= false
VAR Enter_kitchen= false
VAR From_dining= false
= Dining_Door1
~ From_Hall= false
~ From_dining= true
{Wounded: you move slowly, the pain on your side is atrocious}
    {You walk towards the door, arrived there, you open it.     You feel relieved when you notice the room doesn't seem to hide anything threatening. It looks like a dining room.|You are in the dining room}
    #DINING ROOM
    There's a table in the center with six chairs around it. 
    {Like the living room the space is lit by some candles, it seems tidy and it feels like there was someone there minutes ago.|}
    Some food lies on the table, slightly eaten, but fresh.
    To the other side of the room there's another door, and another one at the right.
    
    + Go to the door at the right
    -> Try_Open
    + {not Enter_kitchen} Go to the door to the other side of the room
    -> Kitchen_Door
    + Go back in the living room
    -> Living
    + Eat some food
    -> Food

= Dining_Door2
~ From_Hall= true
{Wounded: you move slowly, the pain on your side is atrocious}
    {Arrived in front of the door you question coming here, but it's too late now. You open the door and notice the room doesn't seem to hide anything threatening. It looks like a dining room.| You are in the dining room}
    There's a table in the center with six chairs around it.
    The space is lit by some candles and it seems tidy and it feels like there was someone there minutes ago. Some food lies on the table, slightly eaten, but fresh.
    To the right there is door, and another one at the left.
    
    + {Living_Door} Go to the door on the left
    -> Living
    + {not Living_Door} Go to the door on the left
    -> Living_Door
    + {not Enter_kitchen} Go to the door to the other side of the room
    -> Kitchen_Door
    + Go back in the Main Hall
    -> Main_Hall

= Food
    {You get closer to the table, there's some chicken breast, some bread and a few pieces of carrots and other vegetables on some plates | There's still a few pieces of bread left}
    You decide to get a piece of bread...
    It's not bad, very soft. You finish eating.
    + Eat some more
    -> Food
    + Go to the door at the right
    -> Main_Hall_Door
    + Go to the door to the other side of the room
    -> Kitchen_Door

= Kitchen_Door
    You approach the door...
    {Slither_sounds: the slithering sounds that you heard before are now very loud, but you still can't understand what is making them}
    {not Slither_sounds: You can hear some slithering sounds coming from the other side of the door, maybe it's some water... or maybe something else}
    ~ Slither_sounds= true
    This could be dangerous...
    * Open the door
    -> Kitchen
    + {From_Hall} Go back
    -> Dining_Door2
    + {not From_Hall} Go back
    -> Dining_Door1
    
= Kitchen
~ Enter_kitchen= true
    You push down the handle, th door creeks open.
    The room is pitch black, there seems to be nothing here
    
    You suddenly realize the slithering noise stopped...
    You can feel a presence beside you 
    {
    - Weapon: You swing your iron bar where you feel the creature is and you hit it
    }
    {
    - not Weapon: Abruptly something bites you on your side, the pain is piercing... you can't help but let out scream. You feel the creature still beside you and you kick it away
    ~ Wounded= true
    } 
    The creature flees.
    You grab a candle from the dining room to look around and see it's a kitchen.
    A big key lies on a counter, you take it and leave quickly.
~ Key_2= true
    You "Fuck that room
#DINING ROOM
{
- From_Hall:
    -> Dining_Door2
- else: 
    -> Dining_Door1
}
    
    {
    - not From_Hall:
    + Go to the door at the right
    -> Main_Hall_Door
    + {not Enter_kitchen} Go to the door to the other side of the room
    -> Kitchen_Door
    + Go back in the living room
    -> Living
    + Eat some food
    -> Food
    }

    
-> END
= Second_Floor
{Wounded: you move slowly, the pain on your side is atrocious}
    You go up the stairs but at the end there's only a wall.
    You "Who the fuck makes stairs that lead to nothing?
    You "This situation is only getting worse
    Your leg is grabbed {Nothing_Here: again} and you fall back reaching the feet of the statue. 
    You look up quickly to see who grabbed you, nothing, just the sound of someone running away.
    You look up to the goddess.
    You "You must be kidding me
    You heart is pumping...
    + Take a second to calm down
    -> Rest
    + {not Bedroom_Door} Go to the room on the right 
    -> Bedroom_Door
    + {not Dining_Door2} Go to the room on the left
    -> Dining_Door2
    + {Bedroom_Door} Go to bedroom
    -> Bedroom
    + {Dining_Door2} Go to the dining room
    -> Dining_Door2
    + Go back to the corridor
    -> Corridor  
= Rest
{Wounded: The pain on your side is almost blinding}
{You take a moment to breath, your heart slows down, but you can't help but fear for your life. | You rest for another moment, you needed that | You breath in and out, you're ready to get out of this place}
    + Take a second to calm down
    -> Rest
    + {not Bedroom_Door} Go to the room on the right 
    -> Bedroom_Door
    + {not Dining_Door2} Go to the room on the left
    -> Dining_Door2
    + {Bedroom_Door} Go to bedroom
    -> Bedroom
    + {Dining_Door2} Go to the dining room
    -> Dining_Door2
    + Go back to the corridor
    -> Corridor 
-> END

  
= Bedroom_Door
{Wounded: you move slowly, the pain on your side is atrociuos}
    You approach the door.
    You "I just want to get out of here
    * Open the door
    -> Bedroom
    * Go back
    -> Main_Hall
    
= Bedroom
#BEDROOM
{Wounded: you move slowly, the pain on your side is atrociuos}
    {You open the door, the| The} room is quite dark, there's a lamp that slighlty lits up the place.
    It's a bedroom, a big bed is at the center of the room, it seems dusty and old, and the insects running around confirm it.
    You "Ew...
    There's two doors, one on the right and one on the left.
    + {not Bathroom} Open the door on the right
    -> Bathroom
    + {Bathroom} Go in the bathroom
    -> Bathroom
    + Open the door on the left
    -> Exit
    + Go back
    -> Main_Hall
= Bathroom
    You open the door, the room is dark. You shiver thinking {Kitchen: there could be the creature} {not Kitchen: something could lie in the darkness}.
    * Feel for a light switch
    You slide your hand on the wall.
    There's a switch! You click it and a feeble light turns on.
#BATHROOM
    It looks like a bathroom, very old and every object here seems broken or crambling: the sink, the mirror and piping going up and down the room.
    There's an iron pipe on the ground, you could use it as a weapon.
        ** Grab pipe
        You take the iron bar
        ~ Weapon= true
        ->Bedroom
        ++ Go back
        -> Bedroom
    + Go back
    -> Bedroom
= Exit
    You approach the door on the left
    It looks like an exit.
    You "The back door!
    You try and open it but it's closed
    {
    -Key_2:
    You try to use the big key you found earlier
    You "YES!
    It works, you're finally out.
    -> Out
    }
    You need a key probably...
    -> Bedroom
  
    
= Out
#OUTSIDE
  "Fuck you Ethan"
    {not Wounded: You run away and hope to never see that house again}
    {Wounded: you slowly get away from the house, still in pain... slowly your eyes seem to close, you're losing a lot of blood... you fall to the ground helplessly...}
-> END

