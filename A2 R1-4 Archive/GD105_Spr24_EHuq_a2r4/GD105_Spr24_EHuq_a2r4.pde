/* Revision: It's spookier. Now I have to remember how to re-make the gif.

I will attempt to make a simple grandfather-clock type thing but it's like, old and posessed
or something. idk we'll see. */

int interval, splice, fatalFrame;
float swing, engine, pLong, sLong, mLong, hLong, progress;
PShape clock, body, head, face, sHand, hHand, foot, pendulum, stalk;
PVector pendulous, clockCtr, handle;

void setup(){
  size(250, 500);  //since this is meant to be a gif it should probably be on the smaller side.  
  frameRate(50);
  pendulous = new PVector();
  clockCtr = new PVector();
  handle = new PVector();
  
/*end of setup() block*/}

void draw(){
//setting up the background
  background(#585576);  //the wall
  noStroke();
  rectMode(CORNER);
  fill(#705228);  //the floor
  rect(-1, height * 0.75, width+1, height * 0.25);
  stroke(#48361b);  //floorboards
  for(int i = 0; i < 250; i+=15){
    line(i, height * 0.75, i, height);
  }
  
//a spooky crack in the wall
  strokeWeight(2);
  stroke(2);
  noFill();
  beginShape();
  vertex(190, 366); vertex(171, 335);
  vertex(185, 325); vertex(175, 302);
  endShape();
  beginShape();
  vertex(185, 325); vertex(201, 320); vertex(205, 307);
  endShape();
  
  noStroke();
  fill(#b5afa4);  //moulding
  rect(-1, height * 0.72, width+1, 18);
  
  engine ++;
  fatalFrame = 63;
  progress = engine / float(fatalFrame);
  
//drawing the clock
  translate(width/2, height/2);
  rectMode(CENTER);
  color oak = #572503;    //oak chassis
  color oakOut = #180806;    //An outline to make the star pop
  color iso = #69352c;  //the "top" surface gets more direct light
  color brass = #F0EB52;
  
  handle.set(0, 45);  //a handle on which to hang the clock entyre 
  clockCtr.set(handle.x, handle.y - 122);  //the middle of the clock-face
  
  //iso-foot
  fill(oak);
  stroke(oakOut);
  strokeWeight(2);
  fill(iso);
  rect(handle.x, handle.y + 85, 75, 30);
  
  //body interior
  fill(0);
  rect(handle.x, handle.y, 50, 170);
  
  //pendulum  -this is gonna be the hard part
  fill(brass);
  stroke(brass);
  strokeWeight(3);
  pLong = 77; 
  swing = lerp(0.25, 0.22, sin(engine * 0.1));
  pendulous.set(pLong * cos(TAU * swing), pLong * sin(TAU * swing));
  
  line(clockCtr.x, clockCtr.y, pendulous.x, pendulous.y);
  circle(pendulous.x, pendulous.y, 15);
  
  //body exterior
  fill(oak);
  stroke(oakOut);
  int doorXoff, doorYoff, windXoff, windYoff;    //offsets for consistency and convenience
  doorXoff = 25;
  doorYoff = 85;
  windXoff = doorXoff - 13;
  windYoff = doorYoff - 15;
  beginShape();
  vertex(handle.x - doorXoff, handle.y - doorYoff);  //top left
  vertex(handle.x + doorXoff, handle.y - doorYoff);  //top right
  vertex(handle.x + doorXoff, handle.y + doorYoff);  //bottom right
  vertex(handle.x -doorXoff, handle.y + doorYoff);  //bottom left
  vertex(handle.x - doorXoff, handle.y - doorYoff);  //top left
  beginContour();                                   //contour goes widdershins
  vertex(handle.x - windXoff, handle.y - windYoff - 7);  //top left
  vertex(handle.x - windXoff, handle.y + windYoff);  //bottom left
  vertex(handle.x + windXoff, handle.y + windYoff);  //bottom right
  vertex(handle.x + windXoff, handle.y - windYoff - 7);  //top right
  endContour();
  endShape();
  
  //iso-head
  fill(iso);
  square(handle.x, handle.y -135, 75);
  //head
  fill(oak);
  square(handle.x, clockCtr.y, 75);
  //foot
  rect(handle.x, handle.y + 105, 75, 30);
  //face
  fill(#F5EAD6);
  strokeWeight(0.5);
  circle(clockCtr.x, clockCtr.y, 55);
  //sHand
  stroke(0);
  strokeWeight(1);
  line(clockCtr.x, clockCtr.y, clockCtr.x + 25 * cos(TAU * 0.33 + progress * TAU), clockCtr.y + 25 * sin(TAU * 0.33 + progress * TAU)); 
  //hHand
  strokeWeight(3);
  line(clockCtr.x, clockCtr.y, clockCtr.x + 20 * cos(TAU * 0.45 + -progress * 2 * TAU), clockCtr.y + 20 * sin(TAU * 0.45 + -progress * 2 * TAU));
  //mHand
  strokeWeight(2);
  line(clockCtr.x, clockCtr.y, clockCtr.x + 17 * cos(TAU * 0.80 + progress * 3 * TAU), clockCtr.y + 17 * sin(TAU * 0.80 + progress * 3 * TAU));
  //pendulum
  //stalk
  
  if(frameCount < 64){
    saveFrame("Frames/####.png");
  }
  
//I used this to discover how many frames I would need for a full pendulum swing.
//I then based the other animation cycles on that frame count.
  if(engine % 31 == 1){
    splice++;
    if(splice == 3){
      noLoop();
    }
  }
  println("Frame Count: "+frameCount+" Engine: "+engine);

/*end of draw() block*/}
