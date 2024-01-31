/*
This will be adapted from a piece by Nassos Daphnis,
entitled "SS-1-78" (1978), making it 6 years
older than myself.
*/

//this runs once at the start
void setup(){
  
  //original dimensions: 30 x 22 in.
  //sketch dimensions: inches times 30
  size(660, 900);
}

//this runs constantly ever after (updates in frames)
void draw(){
  //setting the outer bounds of the linework
  PVector ptA = new PVector(100, 100);
  PVector ptB = new PVector(560, ptA.y);
  PVector ptC = new PVector(ptA.x, 800);
  PVector ptD = new PVector(ptB.x, ptC.y);
  
  //defining the second vertical line
  PVector line2A = new PVector(190, ptA.y);
  PVector line2B = new PVector(line2A.x, ptC.y);
  
  //defining the third vertical line
  PVector line3A = new PVector(480, ptA.y);
  PVector line3B = new PVector(line3A.x, ptC.y);
  
  //setting coordinates for the horizontal ladder
  PVector rightlad = new PVector(line3A.x, 150);
  
  background(212);
  strokeCap(PROJECT);
  
  strokeWeight(30);
  line(ptA.x, ptA.y, ptC.x, ptC.y);
  strokeWeight(20);
  line(ptB.x, ptB.y, ptD.x, ptD.y);
  
  //drawing the second vertical line
  strokeWeight(50);
  line(line2A.x, line2A.y, line2B.x, line2B.y);
  //drawing the third vertical line
  strokeWeight(50);
  line(line3A.x, line3A.y, line3B.x, line3B.y);
  
  //drawing the "ladder rungs" (why isn't this working how I want it to?)
  line(275, line2A.y, line3A.x, line3A.y);
  
}
