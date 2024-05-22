//"crime against property is relatively unimportant"

PImage bg;
PFont Castellar;
String tru = "crime  against  property is relatively unimportant";

void setup(){
//I want to do something with an uncommon canvas shape.
  size(200, 985);
  bg = loadImage("black marble.jpg");
  
//Choosing a "fancy" font that evokes moneyed interets,
//for juxtaposition with statement.
  Castellar = loadFont("Castellar-60.vlw");
  textFont(Castellar, 63);

}

void draw(){
  image(bg, 0, 0);
  translate(width/2, height/2);
  fill(#7d7000); //gold

  rotate(TAU*0.250);
  text(tru, -502,96);
  
  rotate(TAU*-0.250);
  text(tru, -1044, height*0.50);
  
  rotate(TAU*-0.250);
  text(tru, -1588, 96);
/*the rotation and overlap causes relatively unimportant "destruction" to the
overlapped letters. Breaking the sentence into pieces in the small box, and
causing most of it to be rendered at right angles to traditional horizontal
orientation also "damages" the statement.*/
  
   
// save a copy of our canvas on the first frame so we have a clean .png
if (frameCount == 1){save("GD105 Spr24 EHuq a1r3 output.png");}
}
