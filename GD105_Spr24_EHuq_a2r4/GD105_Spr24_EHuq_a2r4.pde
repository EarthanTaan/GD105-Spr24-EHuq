/* I will attempt to make a simple grandfather-clock type thing but it's like, old and posessed
or something. idk we'll see. */
int interval;
PShape clock, body, head, face, sHand, hHand, foot, pendulum, stalk;

void setup(){
  size(250, 500);  //since this is meant to be a gif it should probably be on the smaller side.  
  frameRate(50);
  
  clock = createShape(GROUP);
  //body 
  //head
  //face
  //sHand
  //hHand
  //foot
  //pendulum
  //stalk
  
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
  
  fill(#57251C);  //oak chassis
  stroke(#180806);  //An outline to make the star pop
  strokeWeight(2);
  //iso-foot
  rect(0, 130, 75, 30);
  
  //body interior
  fill(0);
  rect(0, 45, 50, 170);
  //pendulum
  
  //pendulum cover
  fill(#57251C);
  PVector handle = new PVector(0, 45);
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
  beginContour();                                   //contour goes widdershins
  vertex(handle.x - windXoff, handle.y - windYoff - 7);  //top left
  vertex(handle.x - windXoff, handle.y + windYoff);  //bottom left
  vertex(handle.x + windXoff, handle.y + windYoff);  //bottom right
  vertex(handle.x + windXoff, handle.y - windYoff - 7);  //top right
  endContour();
  endShape();
  
  //iso-head
  square(0, -97, 75);
  //head
  square(0, -77, 75);
  //foot
  rect(0, 150, 75, 30);
  //face
  fill(#F5EAD6);
  strokeWeight(0.5);
  circle(0, -77, 55);

  //sHand
  //hHand
  //pendulum
  //stalk
  

/*end of draw() block*/}
