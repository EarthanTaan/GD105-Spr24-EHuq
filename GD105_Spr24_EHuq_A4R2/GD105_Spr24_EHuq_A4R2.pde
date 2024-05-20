/**This is a visual representation of my relative play-time with each weapon in
Monster Hunter Rise (Sunbreak), according to my in-game "guild card", which tracks
this data and presents it as a bar graph.
I'll need to refresh my memory on how to load images into Processing.*/

//An array that counts from 0-14. What's to stop me from just making the first element nothing?
import java.io.*;

PImage[] pixArray;
PImage bg;
ArrayList <PVector> grid = new ArrayList <PVector> ();

void setup() {
  //since it's from a guild card, let's go with card-shaped.
  size(800, 450);
  
  File pix = new File(dataPath(""));
  // load the full list of what's in the data folder
  String[] rawList = pix.list();
  //and then let's check for what's safe
  String tempList = "";
  for (String i : rawList) {
    if (i.endsWith("png")) {
      tempList += i + "\n";
    }
  }
  String[] safeList = tempList.split("\n");
  //println("SAFE FILES:\n");
  //printArray(safeList);
  
  pixArray = new PImage[safeList.length];
  for (int i = 0; i < safeList.length; i++) {
    pixArray[i] = loadImage(safeList[i]);
    //image(pixArray[i], i * 50, 0);  //this line just checks that the array has pics in it.
  }
  
  for (int i = 0; i < 7; i++) {
    grid.add(new PVector(50 + width / 7 * i, height / 3));
  }
  for (int i = 0; i < 7; i++) {
    grid.add(new PVector(50 + width / 7 * i, height / 3 * 2));
  }

  //for (PVector i : grid) {circle(i.x, i.y, 30);} //This was to visually check/fine-tune the corrdinates on the vector grid.
  
  
  bg = loadImage("paduret-paper.jpg");
  
/** end of setup() */ }

void draw(){
  //Rather than a color for a background, I'll be pulling in a paper texture.
  //image(bg, -104, -77, width * 1.28, height * 1.31);

/* There are 14 weapons, so to space them evenly I can split them into two rows of 7 columns.
They will be semi-transparent so overlaps will be visible, and each icon will display at a 
size indicative of my preference by relativity to the other icons around it. */
  
  
  
/** end of draw() */ }
