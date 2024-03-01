//create variables outside of setup
PShape chessbook, cover, spine, page;
float thick, tall;
PFont altima;

void setup() {
  size (800, 800, P3D);
  thick = 50;            //Total thickness of the book will be 100.
  tall = height*0.50;    //Book's height will also be its width, since it's a square.
  altima = createFont("Altima.otf", 60);
  textFont(altima);
  
  //make constituent shapes
  rectMode(CENTER);
  strokeWeight(2);

// COVER
// A square, I'll add a 3x3 chessboard pattern framed inside a border once I get the geometry working.
  cover = createShape(RECT, 0, 0, tall, tall);
  cover.setFill(color(150)); //placeholder color
  cover.translate(0, 0, thick); //bringing it forward by half the thickness of the book (full thickness is 100)
  
// SPINE
// IN THEORY: Two parallel lines equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance left from the center as the edge of the cover.
// CURRENTLY: Just a normal rectangle made of vertices joined by straight lines. I'll worry about the curve once I get the translations and rotations sorted out,
    spine = createShape();
      spine.beginShape();
        spine.vertex(-thick, tall*-0.5);
        spine.vertex(thick, tall*-0.5);
        spine.vertex(thick, tall*0.5);
        spine.vertex(-thick, tall*0.5);
      spine.endShape();
      spine.rotateY(TAU*0.25);    //Flip it sideways.
      spine.translate(tall*-0.5, 0, 0);    //Scoot to the left half the width of the book.

// PAGE (the page edge)
// Like the spine, this will eventually be two parallel lines of equal height to the cover, 100 pts away from each other, joined at both
//ends by parallel arcs, an equal distance right from the center as the edge of the cover.
  page = createShape(); //Again this will be a curved plane rather than a single edge.
      page.beginShape();
        page.vertex(-thick, tall*-0.5);
        page.vertex(thick, tall*-0.5);
        page.vertex(thick, tall*0.5);
        page.vertex(-thick, tall*0.5);
      page.endShape();    
    page.rotateY(TAU*0.25);    //Flip it sideways.
    page.rotateZ(TAU*0.25);    //Spin it horizontal.
    page.translate(0, tall*0.5, 0);    //Scoot it to the bottom of the book.
  
  //create shape group
  chessbook = createShape(GROUP);
  //add the parts together
    chessbook.addChild(cover);
    chessbook.addChild(spine);
    chessbook.addChild(page);
//Now, ideally I want the book to exist in a rotated state such that when I summon it inn draw(),
//it's instantly in the correct position and orientation, but here's where I'm getting
//tripped up. I don't know why this screws up the shape placement.
    chessbook.translate(width*0.50, height*0.50, 0.000);
    chessbook.rotateX(TAU*0.150);
    chessbook.rotateY(TAU*0.000);
    chessbook.rotateZ(TAU*0.125);
  //pop();  //I don't think this did anything.
    
    

}

void draw() {
  background(#e291f3);
  
//The correct angle is as follows -- (as long as chessbook doesn't have any transformations
//embedded in it.)
  //translate(width*0.500, height*0.500, 0);  
  //rotateX(TAU*0.150);
  //rotateY(TAU*0.000);
  //rotateZ(TAU*-0.125);
  
//What follows are neutral values to control in Tweak mode 
//(toggle between this and the above set)
//(These should always start at zero)
  translate(width*0.00, height*0.00, 0);
  rotateX(TAU*0.000);
  rotateY(TAU*0.000);
  rotateZ(TAU*0.000);
  translate(width*0.000, height*0.000, 0);
  rotateX(TAU*0.000);
  rotateY(TAU*0.000);
  rotateZ(TAU*0.000);


/*
  If I'm right I won't need to rotate in draw() because the objects will exist in a rotated 
state before they're drawn, by posessing the properties of having been rotated at creation,
in setup(). These rotation controls are only here in draw() for me to easily preview 
rotations so I can get the numbers.
  ...So why isn't this working?
*/
  shape(chessbook, width*0.00, height*0.00);
  text("Final Fantasy Tactics", width*0.003, height*0.001);
  
//Axes visualizer. (Maybe this should be at the top of draw() instead of the bottom.
//Or maybe I should have one at the top and one at the bottom just to see.
  line(-400,0,0, 400,0,0); //X line
  line(0, -400, 0, 0, 400, 0); //Y line
  line(0, 0, -400, 0, 0, 400); //Z line

}
