/*Going kinda stream-of consciousness with this one. I approached it more or less like I would
a magazine xollage. I searched free image sites for images related to "Lifestyle" and then 
"Among Us", collected a stack of pictures that had a vibe, stripped out most of the backgrounds
and stuck them in the data folder. Didn't feel like a collage without a some cardboard to 
glue everything onto, so I also picked up a cardboard texture to use as a background.
*/

//variables
PImage bg, ron, hat, murka, flip;

void setup(){
  windowTitle("A2R1 The Collage Piece");
  size(1500, 750);
  //load images
  bg = loadImage("cardboard bg.jpg");
  ron = loadImage("ron the vacuous no bg.png");
  hat = loadImage("hat only diff angle.png");
  murka = loadImage("murka no bg.png");
  flip = loadImage("backflip no bg.png");
  
}

void draw(){
  imageMode(CORNER);
  translate(0, height);
  rotate(TAU*-0.25);
  image(bg, 0, 0, height, width);
  resetMatrix();
  
  //body
  scale(0.639);
  image(murka, 262, 778);
  
  //head
  scale(0.664);
  image(ron, 659,696);
  resetMatrix();
  
  //hat
  translate(width*0.260, height*0.703);
  scale(1.942);
  rotate(TAU*0.042);
  imageMode(CENTER);
  image(hat, 0,0);
  
  resetMatrix();
  translate(width*0.5, height*0.5);
  push();
  
  //flipper
  rotate(0.32);
  scale(1.63);
  image(flip, width*-0.14, height*0.00);
  
  pop();
  //if (frameCount == 1){save("GD105 Spr24 EHuq a2r1 output.png");}
}
