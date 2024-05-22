/** Maybe I can do like a little, basic virtual pet type thing....in one day... Maybe I need to
 think smaller.
 */
import java.io.*;

PImage bg, egg, friend, food, poop;
String[] stats;
int tick = 0;

void setup () {
  size(200, 200);
  stats = loadStrings("sav.txt");

  bg = loadImage("hikaique forest bridge.jpg");
  bg.resize(width, height);
}

void draw () {
  background(bg);
  //draw the character

  //the character reacts to things

  //maybe there are buttons to press? I'm nostaligic for the tama/digi 3-button interface.

  //A short menu of features you cycle through.

  //Maybe individual game screens are a class, instanced as objects that you pass between, which
  //alter the functionality of the three buttons depending on which one is active.

  /**auto-save periodically (the 'save' portion doesn't appear to be working. Processing doesn't
  appear to be overwriting the file "sav.txt" and I don't know why.) */
  //if (frameCount % 100 == 0) {
  //  stats[1] = str(tick);
  //  saveStrings("sav.txt", stats);
  //  printArray();
  //  tick++;
  //}
}

//The basic interface platform, consisting of a home screen, and a stats screen, which the player
//can switch between in order to check the status of the pet.
class GameScreen {
  //data

  //constructor(s)
  GameScreen (/*arguments*/) {
    //initial values
  }

  //methods
  void update () {
    //display and change based on interactions?
  }
  void screenMove () {
    //move to a different screen when a menu item is selected, changing button functionality
  }
}
