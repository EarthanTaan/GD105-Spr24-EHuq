/* I'm going try to make a heart-shape which beats faster the closer the mouse gets to it,
 and if I can pull that off, I want to make it shatter/stop if clicked on. Wish me luck.*/

float hBig, hBeat, hPoint, lHip, rHip, hRate, prox, engine, buttDepth, buttWideOffset;
//h = heart; Beat, Rate = offset and speed of beat anim.; prox = proximity of mouse to heart
//lHip is left hip
PShape heart;
PVector hShoulderL, hShoulderR, buttCrack, LCP1, LCP2, RCP1, RCP2/*listen it is what it is*/;
boolean broke = false;

void setup() {
  windowTitle("The Mouse Reactive Piece, or The Terrifying Ordeal");
  size(1000, 1000);  // I was originally going to do a small one, but I'll need ample space around the heart to communicate the effect. (But my screen's not very big)
  hShoulderL = new PVector();
  hShoulderR = new PVector();
  buttCrack = new PVector();
  LCP1 = new PVector();
  LCP2 = new PVector();
  RCP1 = new PVector();
  RCP2 = new PVector();

} //end of setup() block

void draw() {
  
  translate(width/2, height/2);
  background(0);  //note: change this to lerp between black and red when too close
  //Change the background a warning flash when too close
  if(prox < 100){
    background(lerpColor(#000000, #5A0000, sin(engine * 0.25)));
  }
  if(broke == true){
    background(255);
  }
  shapeMode(CENTER);
  noStroke();
  fill(#D30F0F);

//define the variables
//prox = distance from mouse to center; hRate = reverse-map prox to 0-1 (switch hi/lo)
  prox = dist(mouseX, mouseY, width/2, height/2);
  hRate = norm(prox, width, 0);
  engine += hRate * 0.40;
  hBig = 80;
  hPoint = TAU*0.25;  //pointy bit goes down

  //Animate the heartbeat by moving the  with sin/cos but only within a small range.
  constrain(hBeat, cos(0.33), sin(0.37));
  hBeat = lerp(TAU*0.33, TAU*0.37, cos(engine));
  //hBeat = TAU/3;    //temporary halting of animation, the real hBeat is above.
  
  hShoulderL.set(hBig * cos(hPoint + hBeat), hBig * sin(hPoint + hBeat));
  hShoulderR.set(hBig * cos(hPoint - hBeat), hBig * sin(hPoint - hBeat));
  buttCrack.set(lerp(hShoulderL.x, hShoulderR.x, 0.5), -hBig/2 * hBeat/2 + 35);
  buttDepth = height * 0.75;
  buttWideOffset = width * 0.37;
  LCP1.set(buttWideOffset, buttDepth);
  LCP2.set(-buttWideOffset, buttDepth);
  RCP1.set(-buttWideOffset, buttDepth);
  RCP2.set(buttWideOffset, buttDepth);
  
//draw the heart
//Copied my equilateral triangle formula from previous assignment.
  triangle(
    hBig * cos(hPoint), hBig * sin(hPoint), //triangle pt 1
    hShoulderL.x, hShoulderL.y, //pt 2
    hShoulderR.x, hShoulderR.y  //pt 3
    );
//draw the butt of the heart (archaeologists of ancient rome say it's a butt, it's not my fault)
  //visualize the control points (no longer necessary) (they ended up being off-screen anyway)
  //circle(LCP1.x, LCP1.y, 50); circle(LCP2.x, LCP2.y, 50);
  //circle(RCP1.x, RCP1.y, 50); circle(RCP2.x, RCP2.y, 50);
  curve(LCP1.x, LCP1.y, hShoulderL.x, hShoulderL.y, buttCrack.x, buttCrack.y, LCP2.x, LCP2.y);
  curve(RCP1.x, RCP1.y, hShoulderR.x, hShoulderR.y, buttCrack.x, buttCrack.y, RCP2.x, RCP2.y);


//readouts:
  println("Heartrate: "+hRate+", Proximity: "+prox+", Engine: "+engine);
  println("Triangle side length: "+dist(hBig * cos(hPoint + hBeat), hBig * sin(hPoint + hBeat), hBig * cos(hPoint - hBeat), hBig * sin(hPoint - hBeat)));

  if(broke == true){
    noLoop();
    noFill();
    stroke(255);
    strokeWeight(6);
    beginShape();
      vertex(0, height * -0.14);
      vertex(width * -0.04, height * -0.06);
      vertex(width * 0.02, height * -0.03);
      vertex(0, height * 0.09);
    endShape();
  }

/*end of draw loop*/ }

//break heart
void mousePressed(){
  if(prox < 100){
    broke = true;
  }
}
