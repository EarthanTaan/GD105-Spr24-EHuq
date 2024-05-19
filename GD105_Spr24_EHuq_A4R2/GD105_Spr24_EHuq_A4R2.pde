/*This is a visual representation of my relative play-time with each weapon in
Monster Hunter Rise (Sunbreak), according to my in-game "guild card", which tracks
this data and presents it as a bar graph.
I'll need to refresh my memory on how to load images into Processing.*/

//An array that counts from 0-14. What's to stop me from just making the first element nothing?
import java.io.*;

PImage[] pixArray = new PImage[1];

void setup(){
  //since it's from a guild card, let's go with card-shaped.
  size(800, 450);
  
  File pix = new File(dataPath("C:\\Users\\Student\\Documents\\GitHub\\GD105-Spr24-EHuq\\GD105_Spr24_EHuq_A4R2\\data\\"));
  String[] pixList = pix.list();
  for (String p : pixList) {
    int i = 1;
    if (p.endsWith("png")) {
      pixArray[i] = loadImage(pixList[i]);
      i++;
    } else {
      continue;
    }
  }
    
  println(pixArray[2]);

  
  
/* End of setup() */ }

void draw(){
  //Rather than a color for a background, I'll be pulling in a paper texture.
  
  
  
  //There are 14 weapons, so to space them evenly I can split them into two rows of 7 columns.
  //They will be semi-transparent so overlaps will be visible, and each icon will display at a 
  //size indicative of my preference by relativity to the other icons around it.
  
}

class Icon {
//fields (data)
//image
//size
//placement
//transparency

//constructor(s) (initial values)
Icon () {
}

//methods (functionality, output)
//Display on the screen
}
