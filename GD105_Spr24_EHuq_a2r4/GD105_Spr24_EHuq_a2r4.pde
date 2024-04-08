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
  background(#83af9c);
  noStroke();
  rectMode(CORNER);
  fill(#927342);
  rect(-1, height * 0.75, width+1, height * 0.25);
  stroke(#7c5c29);
  for(int i = 0; i < 250; i+=15){
    line(i, height * 0.75, i, height);
  }
  noStroke();
  fill(#F5EAD6);
  rect(-1, height * 0.72, width+1, 18);
  
//drawing the clock
  rectMode(CENTER);
  fill(#57251C);
  stroke(#57251C);
  strokeWeight(2);
  translate(width/2, height/2);
  
  //body 
  rect(0, 60, 50, 200);
  //head
  //face
  //sHand
  //hHand
  //foot
  //pendulum
  //stalk
  

/*end of draw() block*/}
