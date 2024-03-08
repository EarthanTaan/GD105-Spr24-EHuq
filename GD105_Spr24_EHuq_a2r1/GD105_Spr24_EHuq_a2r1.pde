//variables
PImage bg, ron, hat;

void setup(){
  size(1500, 750);
  //load images
  bg = loadImage("cardboard bg.jpg");
  ron = loadImage("ron the vacuous no bg.png");
  hat = loadImage("hat only diff angle.png");
  
  
}

void draw(){
  //draw images
  translate(0, height);
  rotate(TAU*-0.25);
  image(bg, 0, 0, height, width);
  resetMatrix();
  
  image(ron, 231,189);
  image(hat, 326,136);
  
  
  //if (frameCount == 1){save("GD105 Spr24 EHuq a2r1 output.png");}
}
