/*
A Boring Story
*/
-> Intro
VAR hunger = 10
VAR hydration = 1
VAR energy = 1
VAR water_supplies = 3
=== Intro ===

You wake up, tired and confused
You don't know where you are // He's on a spaceship
Everything is dark, except the starts outside the window. #start music #lights on
-> what

    = what
What do you want to do?
    *   Go by the window
    -> look_out
    
    *   Look Around
    ->look_around
    
    *->rest
    
    =rest
    +Wait 
    You wait and rest.
    -> voice
    
    + Wait
    ->Wait
    
    =look_out
Out of the window there's only... space
You are floating in the middle of an endless abyss
      ->what
    
    =look_around
 The room is empty, there's only a bizarre machine dripping with thick water.
 There's also a button on its glass dirty surface
     *Go by the window
     ->look_out
     *Analyse machine
     ->machine
    
VAR alarm_ringing = false

    =machine
    *Wipe the machine surface clean
    ->wipe_machine
    *Press the button
    ->button
    *Do nothing
    ->voice

=wipe_machine
Through the glass you can see some bodies that look hybernated.
You look away in horror
...
->machine

=button
The button starts an alarm, it's deafening.
You cover your ears
~ alarm_ringing= true
...
->machine

    =Wait
You wait and rest
    *   Go by the window
    -> look_out
    
    *   Look Around
    ->look_around
    
    + Wait
    ->Wait
    
    =voice
Suddenly you hear a voice...
{button: The alarm makes it hard to understand the voice}
TODO voice explains situation
...
->questions

=questions
* {wipe_machine} Ask abouth bodies
        -> alarm ->
        "I can explain easily"
        ...
        ->questions
        TODO Explain bodies
* (stop_alarm) {button} Order to stop alarm
        "I can do that right away" 
        The alarm stopped, your ears ache.
        ~ alarm_ringing= false
        
        ->questions
        
* Ask about whereabouts
         -> alarm ->
        TODO Explain whereabouts
        
* Ask for food
         -> alarm ->
        Voice "There's a problem about that"
        ** Complain
         -> alarm ->
        "We'll find a solution"
        ** Accept
         -> alarm ->
        "Thank you for your understanding"
        --Your stomach groans
        
* Ignore voice

-Voice "Now follow my lead"
Voice "This way"
A door opens, silently sliding upwards
A dark corridor lies beyond it
-> The_Corridor
-> END

= alarm
 {button and not stop_alarm: The alarm makes it hard to understand the voice}
 ->->
 
 === The_Corridor ===
 The corrdior has no windows and apparently no artificial lights.
 You would need something to see in the darkness.
 You proceed using the weak lighting coming from the room you just left
Voice "I detect your hydration level is critical"
"No shit.."
Voice "There are water supplies in teh crate on your left"
"But I suggest you keep it for later and the rest of the crew"
-> drink

= drink
hydration = {hydration}
water supplies = {water_supplies}
{water_supplies == 0: You finished your water supplies}

+   {hydration < 3 and water_supplies > 0} Drink one
    ~ hydration = hydration +1
    ~ water_supplies = water_supplies -1
    ->drink
+   {hydration == 3 and water_supplies > 0} Drink another one 
    You don't really feel like drinking anymore
    ->enough_drinking
+   Don't drink
    ->enough_drinking
    
= enough_drinking
 -> END