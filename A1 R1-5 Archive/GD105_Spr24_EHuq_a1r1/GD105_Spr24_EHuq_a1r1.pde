/*
This will be adapted from a piece by Nassos Daphnis,
entitled "SS-1-78" (1978), making it 6 years
older than myself.
Revision: I'm not sure how much I can streamline this very simple code, but I can pull in the
original as a transparent overlay and fine tune the lines in tweak mode to tighten up the 
mimicry.
*/

PImage ref;

void setup(){
  //original dimensions: 30 x 22 in.
  //sketch dimensions: inches times 30
  size(660, 900);
  ref = loadImage("nassos-daphnis-ss-1-78 ref.jpg");

}

void draw(){
  //setting the outer bounds of the linework
  PVector ptA = new PVector(119, 100);  //upper & left bound
  PVector ptB = new PVector(554, ptA.y);  //righthand bound
  PVector ptC = new PVector(ptA.x, 799);  //bottom bound
  PVector ptD = new PVector(ptB.x, ptC.y); //lower left corner
  
  //defining the second vertical line
  PVector line2A = new PVector(196, ptA.y);
  PVector line2B = new PVector(line2A.x, ptC.y);
  
  //defining the third vertical line
  PVector line3A = new PVector(490, ptA.y);
  PVector line3B = new PVector(line3A.x, ptC.y);
  
  // Setting parameters for the horizontal lines.
  // runglength.x is the start of the right rungs
  // runglength.y is the end of the left rungs
  // ht12 contains the heights for rungs 1 & 2, etc.
  PVector runglength = new PVector(249, 439);
  PVector ht12 = new PVector(141, 200);
  PVector ht34 = new PVector(258, 317);
  PVector ht56 = new PVector(374, 432);
  PVector ht78 = new PVector(490, 550);
  PVector ht910 = new PVector(607, 664);
  PVector ht1112 = new PVector(724, 784);

  colorMode(255);
  background(212);
  strokeCap(SQUARE);
  
  // Outermost vertical lines. First left, then right.
  strokeWeight(30);
  line(ptA.x, ptA.y, ptC.x, ptC.y);
  strokeWeight(20);
  line(ptB.x, ptB.y, ptD.x, ptD.y);
  
  // line2 is the second vertical line, ladder's left side
  strokeWeight(40);
  line(line2A.x, line2A.y, line2B.x, line2B.y);
  // line3 is the third vertical line, ladder's right side
  line(line3A.x, line3A.y, line3B.x, line3B.y);
  
  // drawing the "ladder rungs"
  strokeWeight(30);
  // right rungs
  line(runglength.x, ht12.x, line3A.x, ht12.x);
  line(runglength.x, ht34.x, line3A.x, ht34.x);
  line(runglength.x, ht56.x, line3A.x, ht56.x);
  line(runglength.x, ht78.x, line3A.x, ht78.x);
  line(runglength.x, ht910.x, line3A.x, ht910.x);
  line(runglength.x, ht1112.x, line3A.x, ht1112.x);
  
  // left rungs
  line(line2A.x, ht12.y, runglength.y, ht12.y);
  line(line2A.x, ht34.y, runglength.y, ht34.y);
  line(line2A.x, ht56.y, runglength.y, ht56.y);
  line(line2A.x, ht78.y, runglength.y, ht78.y);
  line(line2A.x, ht910.y, runglength.y, ht910.y);
  line(line2A.x, ht1112.y, runglength.y, ht1112.y);
  
  //colorMode(100, 100);
  //tint(100, 31);
  //ref.resize(width+50, height+55);
  //image(ref, -24, -27);
  
  if (frameCount == 1){save("GD105 Spr24 EHuq a1r1 output.png");}

}
