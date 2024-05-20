/**This is a visual representation of my relative play-time with each weapon in
Monster Hunter Rise (Sunbreak), according to my in-game "guild card", which tracks
this data and presents it as a bar graph.
I'll need to refresh my memory on how to load images into Processing.*/

/* just need to write these down for later */
//Play Time:708
//Total Quests:618

import java.io.*;

PImage[] pixArray;
PImage bg;
ArrayList<PVector> grid = new ArrayList<PVector>();
ArrayList<Icon> icons = new ArrayList<Icon>();
IntDict nameDict = new IntDict();

void setup() {
  //since it's from a guild card, let's go with card-shaped.
  size(800, 450);
  
  //Create 14 PVectors evenly spaced in two rows.
  for (int i = 0; i < 7; i++) {
    grid.add(new PVector(50 + width / 7 * i, height / 3));
  }  //probably could have automated both rows but don't ask me how.
  for (int i = 0; i < 7; i++) {
    grid.add(new PVector(50 + width / 7 * i, height / 3 * 2));
  }
  
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
  
  //create a dict associating weapon names with their use values
  String[] tempTxt = loadStrings("stats.txt");
  for (String s : tempTxt) {
    nameDict.set(s.substring(0, s.indexOf(':')), int(s.substring(s.indexOf(':')+1))); 
  }
  
  pixArray = new PImage[safeList.length];
  for (int i = 0; i < safeList.length; i++) {
    pixArray[i] = loadImage(safeList[i]);
    //create a new Icon and assign it a PImage, a PVector, and uses - once per rep.
    icons.add(new Icon(pixArray[i], grid.get(i), 
    nameDict.get(safeList[i].substring(0, safeList[i].indexOf('.')))));
    
  }

  bg = loadImage("paduret-paper.jpg");
  
/** end of setup() */ }

void draw(){
  //Rather than a color for a background, I'll be pulling in a paper texture.
  imageMode(CORNER);
  image(bg, -104, -77, width * 1.28, height * 1.31);
  
  imageMode(CENTER);
  for (Icon i : icons) {
    i.show();
    i.measure();
  }

/* There are 14 weapons, so to space them evenly I can split them into two rows of 7 columns.
They will be semi-transparent so overlaps will be visible, and each icon will display at a 
size indicative of my preference by relativity to the other icons around it. */
  
  
  
/** end of draw() */ }
