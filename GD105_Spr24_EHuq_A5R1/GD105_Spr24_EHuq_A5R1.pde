/** Maybe I can do like a little, basic virtual pet type thing....in one day... Maybe I need to
 think smaller.
 */

PImage bg;
String[] stats;

void setup () {
  size(200, 200);
  stats = loadStrings("sav.txt");
  printArray(stats);

  bg = loadImage("placeholder.filename");
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
  
  if () {
  }
}

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

class Button {
  //data

  //constructor
  Button () {
  }

  //methods
  void select () {
  }
}
