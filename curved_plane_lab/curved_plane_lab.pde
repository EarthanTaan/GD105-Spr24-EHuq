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

  translate(width*0.50, height*0.50, 0.00);
  rotateX(TAU*-0.07);
  rotateY(TAU*-0.03);
  rotateZ(TAU*0.02);


  textSize(30);
  fill(0);
  line(-100,0,0, 100,0,0);
  text("X", 100, 0, 0);
  line(0,-100,0, 0,100,0);
  text("Y", 0, 100, 0);
  line(0,0,-100, 0,0,100);
  text("Z", 0, 0, 100);

  shape(halfpipe);

}
