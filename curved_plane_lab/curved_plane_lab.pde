PShape halfpipe, topcap, botcap, sides;

void setup(){
  size(500, 500, P3D);
  
  topcap = createShape(
    ARC, width*0.00, height*0.00, width*0.50, height*0.50, TAU*0.40, TAU*0.60, OPEN);
    topcap.translate(0, 0, -50);
    
  botcap = createShape(
    ARC, width*0.00, height*0.00, width*0.50, height*0.50, TAU*0.40, TAU*0.60, OPEN);
    botcap.translate(0, 0, 50);
  
  sides = createShape();
    sides.beginShape(LINES);
      sides.vertex(0, height*-0.130, -50);
      sides.vertex(0, height*-0.130, 50);
      sides.vertex(0, height*0.130, 50);
      sides.vertex(0, height*0.130, -50);
    sides.endShape();
    sides.translate(-100, 0, 0);
  
  halfpipe = createShape(GROUP);
  halfpipe.addChild(topcap);
  halfpipe.addChild(botcap);
  halfpipe.addChild(sides);
  halfpipe.rotateX(TAU*0.25);
}

void draw(){
  background(236);
  stroke(0);
  strokeWeight(2);
  textSize(30);
  fill(0);

  translate(width*0.54, height*0.50, 0.00);

  line(-100,0,0, 100,0,0);
  text("X", 100, 0, 0);
  rotateX(TAU*0.02);

  line(0,-100,0, 0,100,0);
  text("Y", 0, 100, 0);
  rotateY(TAU*-0.60);
  
  line(0,0,-100, 0,0,100);
  text("Z", 0, 0, 100);
  rotateZ(TAU*0.01);
  
  PShape hp;
  hp = createShape();
    hp.beginShape();
      hp.noFill();
      hp.curveVertex(width*-0.47, height*0.28, 0.00);
      hp.curveVertex(width*-0.24, height*-0.09, 46);
      hp.curveVertex(width*-0.25, height*0.09, -60);
      hp.curveVertex(width*0.93, height*1.00, 0.00);
    hp.endShape();
  
  shape(hp);
  
}
