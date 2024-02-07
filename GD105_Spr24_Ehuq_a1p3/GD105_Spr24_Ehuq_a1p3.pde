//"crime against property is relatively unimportant"
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
  translate(width/2, height/2);
  textSize(100);

  rotate(TAU*0.250);
  text(tru, -484,96);
  
  rotate(TAU*-0.250);
  text(tru, -1000, height*0.50);
  
  rotate(TAU*-0.250);
  text(tru, -1523, 96);
  
   
  // save a copy of our canvas on the first frame so we have a clean .png
  //if (frameCount == 1){save("GD105 Spr24 EHuq a1p3 output.png");}
}
