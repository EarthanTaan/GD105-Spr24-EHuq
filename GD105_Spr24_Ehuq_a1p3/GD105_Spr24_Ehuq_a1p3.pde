//"crime against property is relatively unimportant"

// optional: save our truism to memory in the form of a String
// optional: save our font to memory in the form of a PFont

void setup(){
  // TODO: set the canvas size to something nice and big,
  // but smaller than your screen
  size(200, 950);
  
  // if there are any text styles we want
  // to set that won't change, do that here
  
  // if you are using a font, load your .vlw into memory
  // and then set the current font style
}

void draw(){
  background(0);
  
  String tru = "crime against property is relatively unimportant";
  
  rotate(TAU*0.25);
  
  textSize(102);
  text(tru, -8,-10);
   
   
  // save a copy of our canvas on the first frame so we have a clean .png
  //if (frameCount == 1){save("GD105 Spr24 EHuq a1p3 output.png");}
}
