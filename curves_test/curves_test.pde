void setup(){
  size(800, 800);
  
}

void draw(){

  background(255);
  
/*Try the other curve vertex types: bezierVertex and quadraticVertex.
They might do what you're looking for.
*/
  
//had it up to here with startShape(), let's try masking a rectangle

  //rect(100, 350, width-200, 50, 40, 40, 0, 0);
  
  PVector ctrl1 = new PVector(200, 601); //control point 1
  PVector ctrl2 = new PVector(375, 425); //control point 2

  beginShape();
    noFill();
    stroke(0);
    vertex(100, 400);
    curveVertex(ctrl1.x, ctrl1.y); //ctrl pt 1
    curveVertex(100, 400); //anchor 1
    //curveVertex(137, 360);
    curveVertex(200, 350); //anchor 2
    curveVertex(ctrl2.x, ctrl2.y); //ctrl pt 2
    //vertex(600, 400);
    //curveVertex(100, 400);
  endShape();
  
  stroke(#E82AA6);
  line(100, 400, ctrl1.x, ctrl1.y);
  circle(ctrl1.x, ctrl1.y, 5); //visualize ctrl 1
  stroke(#44D897);
  line(200, 350, ctrl2.x, ctrl2.y);
  circle(ctrl2.x, ctrl2.y, 5); //visualize ctrl 2
//a tool to see coordinates so I can skip the trial and error, because I have goddamn dyscalculia
  fill(0);
  textSize(20);
  text("x: "+mouseX+", y: "+mouseY, mouseX, mouseY);

}
