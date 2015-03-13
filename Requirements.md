# Requirements #

**Splash (Login or Registration)** Game Page (a) start button, b) playing)
**Score Panel (Avatars, Your Score, Other peoples' scores, accuracy)**

## Login or Registration ##
**Ask for username if you want to login** If want to register
  * ask for username and avatar upload

## Game Play ##

**A target (avatar) randomly bounces around a box at increasing speeds** Targets move faster incrementally the more you hit them
**When you run out of bullets, you should get a pop-up with a "start new game option"**

### Wii Stuff ###
**Rumble on successful hit** Emit sound from Wii on hit

## Talk Smack ##
**If you click on someones avatar in the top score list** You can select from 5 different "smack downs" and it will populate an area underneath their scoreboard with the smack and details on who it came from.

## Real-Time Scoring Box ##

**Displays your score and has a top 10 players that update real-time** Scoring: Total Bullets, Shots taken, # of hits (accuracy: #hits/#taken

## Database ##

**user table
  * name
  * avatar**

**game table
  * user
  * total bullets
  * shots taken
  * successful hits**

**smackdown table
  * smackdown text**

