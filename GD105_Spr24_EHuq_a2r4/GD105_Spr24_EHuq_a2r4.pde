/* I will attempt to make a simple grandfather-clock type thing but it's like, old and posessed
or something. idk we'll see. */
int interval, engine, animLoop;
float swing;
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
  background(#83af9c);  //the wall
  noStroke();
  rectMode(CORNER);
  fill(#927342);  //the floor
  rect(-1, height * 0.75, width+1, height * 0.25);
  stroke(#7c5c29);  //floorboards
  for(int i = 0; i < 250; i+=15){
    line(i, height * 0.75, i, height);
  }
  noStroke();
  fill(#F5EAD6);  //moulding
  rect(-1, height * 0.72, width+1, 18);
  
//drawing the clock
  translate(width/2, height/2);
  rectMode(CENTER);
  color oak = #57251C;    //oak chassis
  color oakOut = #180806;    //An outline to make the star pop
  color iso = #69352c;  //the "top" surface gets more direct light
  color brass = #F0EB52;
  engine++;
  
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
  float pLong = dist(clockCtr.x, clockCtr.y, clockCtr.x, clockCtr.y + 77);
  swing = lerp(0.25, 0.22, sin(frameCount * 0.1));
  
  line(clockCtr.x, clockCtr.y, pLong * cos(TAU * swing), pLong * sin(TAU * swing));
  circle(pLong * cos(TAU * swing), pLong * sin(TAU * swing), 15);
  
  //body exterior
  fill(oak);
  stroke(oakOut);
  int doorXoff, doorYoff, windXoff, windYoff;
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
  square(0, -90, 75);
  //head
  fill(oak);
  square(handle.x, clockCtr.y, 75);
  //foot
  rect(0, 150, 75, 30);
  //face
  fill(#F5EAD6);
  strokeWeight(0.5);
  circle(clockCtr.x, clockCtr.y, 55);
  
  
 println("Swing: "+swing);
 println("animLoop: "+animLoop);

  //sHand
  //hHand
  //pendulum
  //stalk
  

/*end of draw() block*/}
