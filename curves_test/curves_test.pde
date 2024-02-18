void setup(){
  size(500,500);
}

void draw(){
  background(255);
  
  //noFill();
  //beginShape();
  //  curveVertex(441,  1094);
  //  curveVertex(563,  584);
  //  curveVertex(516,  183);
  //  curveVertex(156,  174);
  //  curveVertex(108, 448);
  //  curveVertex(383, 727);
  //endShape(); 

  //beginShape();
  //  curveVertex(359,  1244);
  //  curveVertex(521,  451);
  //  curveVertex(441,  197);
  //  curveVertex(226,  219);
  //  curveVertex(187, 448);
  //  curveVertex(513, 1006);
  //endShape();
  
/*Try the ther curve vertex types: bezierVertex and quadraticVertex.
They might do what you're looking for.
*/
  beginShape();
    vertex(400, 400);
    vertex(100, 400);
    curveVertex(0, 0); //first curveVertex
    curveVertex(30, 300);
    curveVertex(250, 250);
    curveVertex(401, 400);
    curveVertex(384, 617); //last curveVertex
  endShape();
  
}
