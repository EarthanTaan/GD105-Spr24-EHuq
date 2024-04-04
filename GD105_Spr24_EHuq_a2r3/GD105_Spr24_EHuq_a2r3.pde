/* I'm going try to make a heart-shape which beats faster the closer the mouse gets to it,
 and if I can pull that off, I want to make it shatter/stop if clicked on. Wish me luck.*/

float hBig, hBeat, hPoint, hRate, buttWide, buttTall, prox, engine;
//h = heart; Beat, Rate = offset and speed of beat anim.; prox = proximity of mouse to heart
PShape heart;
PVector hShoulderL, hShoulderR, buttCrack/*listen it is what it is*/;

void setup() {
  windowTitle("The Mouse Reactive Piece, or The Terrifying Ordeal");
  size(1000, 1000);  // I was originally going to do a small one, but I'll need ample space around the heart to communicate the effect. (But my screen's not very big)

} //end of setup() block

void draw() {
  
  translate(width/2, height/2);
  background(0);  //note: change this to lerp between black and red when too close
  shapeMode(CENTER);
  noStroke();
  fill(#D30F0F);

//define the variables
//prox = distance from mouse to center; hRate = reverse-map prox to 0-1 (switch hi/lo)
  prox = dist(mouseX, mouseY, width/2, height/2);
  hRate = norm(prox, width, 0);
  engine += hRate * 0.5;
  hBig = 150;
  hPoint = TAU*0.25;  //pointy bit goes down
  buttWide = hBig * 0.915;
  buttTall = hBig * 1.20;

//Animate the heartbeat by moving the control points with sin/cos but only within a small range.
  constrain(hBeat, cos(0.33), sin(0.37));
  //hBeat = lerp(TAU*0.33, TAU*0.37, cos(engine));
  hBeat = TAU/3;    //temporary halting of animation, the real hBeat is above.
  
//draw the heart
//Copied my equilateral triangle formula from previous assignment.
  triangle(
    hBig * cos(hPoint), hBig * sin(hPoint), //triangle pt 1
    hBig * cos(hPoint + hBeat), hBig * sin(hPoint + hBeat), //pt 2
    hBig * cos(hPoint - hBeat), hBig * sin(hPoint - hBeat)  //pt 3
    );
//draw the butt of the heart (archaeologists of ancient rome say it's a butt, it's not my fault)
  arc(-61, -74, buttWide, buttTall, PI, TAU);
  arc(61, -74, buttWide, buttTall, PI, TAU);
  

//readouts:
  println("Heartrate: "+hRate+", Proximity: "+prox+", Engine: "+engine);

/*end of draw loop*/ }
