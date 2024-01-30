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
  //define variables at the top here.
  PVector ptA = new PVector(100, 100);
  PVector ptB = new PVector(560, 100);
  PVector ptC = new PVector(100, 800);
  PVector ptD = new PVector(560, 800);
  
  background(212);
  //strokeWeight(1);
  
  stroke(0);
  strokeWeight(5);
  point(ptA.x, ptA.y);
  point(ptB.x, ptB.y);
  point(ptC.x, ptC.y);
  point(ptD.x, ptD.y);
  
  //lines go here
}
