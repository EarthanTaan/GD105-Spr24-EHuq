/*
This will be adapted from a piece by Nassos Daphnis,
entitled "SS-1-78" (1978), making it 6 years
older than myself.
*/

void setup(){
  
  //original dimensions: 30 x 22 in.
  //sketch dimensions: inches times 30
  size(660, 900);
}

void draw(){
  //setting the outer bounds of the linework
  PVector ptA = new PVector(110, 100);
  PVector ptB = new PVector(545, ptA.y);
  PVector ptC = new PVector(ptA.x, 800);
  PVector ptD = new PVector(ptB.x, ptC.y);
  
  //defining the second vertical line
  PVector line2A = new PVector(190, ptA.y);
  PVector line2B = new PVector(line2A.x, ptC.y);
  
  //defining the third vertical line
  PVector line3A = new PVector(480, ptA.y);
  PVector line3B = new PVector(line3A.x, ptC.y);
  
  // Setting parameters for the horizontal lines.
  // runglength.x is the start of the right rungs
  // runglength.y is the end of the left rungs
  // ht12 contains the heights for rungs 1 & 2, etc.
  PVector runglength = new PVector(240, 430);
  PVector ht12 = new PVector(145, 200);
  PVector ht34 = new PVector(258, 317);
  PVector ht56 = new PVector(375, 430);
  PVector ht78 = new PVector(490, 550);
  PVector ht910 = new PVector(610, 670);
  PVector ht1112 = new PVector(730, 785);

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
  
  if (frameCount == 1){save("GD105 Spr24 EHuq a1r1 output.png");}

  
}
