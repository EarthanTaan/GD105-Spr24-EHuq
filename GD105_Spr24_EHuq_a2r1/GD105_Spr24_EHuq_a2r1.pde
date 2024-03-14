/*Going kinda stream-of consciousness with this one. I approached it more or less like I would
a magazine xollage. I searched free image sites for images related to "Lifestyle" and then 
"Among Us", collected a stack of pictures that had a vibe, stripped out most of the backgrounds
and stuck them in the data folder. Didn't feel like a collage without a some cardboard to 
glue everything onto, so I also picked up a cardboard texture to use as a background.
*/

//variables
PImage bg, ron, hat, murka, flip, sing, bird, train, 
weights, arc, sk8, brick, abe;

void setup(){
  windowTitle("A2R1 The Collage Piece");
  size(1500, 750);
  //load images
  bg = loadImage("cardboard bg.jpg");
  ron = loadImage("ron the vacuous no bg.png");
  hat = loadImage("hat only diff angle.png");
  murka = loadImage("murka no bg.png");
  flip = loadImage("backflip no bg.png");
  sing = loadImage("singin in the nude no bg.png");
  bird = loadImage("hot topic no bg.png");
  train = loadImage("train no bg.png");
  weights = loadImage("weights monster no bg.png");
  arc = loadImage("arc no bg.png");
  sk8 = loadImage("sk8r grrl no bg.png");
  brick = loadImage("brick circle no bg.png");
  abe = loadImage("abe no bg.png");
  
}

void draw(){
  //use a stack of cardboard as the backdrop
  imageMode(CORNER);
  translate(0, height);
  rotate(TAU*-0.25);
  image(bg, 0, 0, height, width);
  resetMatrix();
  
  //a handle to move everything, don't forget to push-pop back to this 
  translate(width*0.67, height*0.50);
  imageMode(CENTER);
  push();

//Gonna use this code a lot, here's a blank to copy and paste
  //translate(width*0.000, height*0.000);
  //rotate(TAU*0.000);
  //scale(2.00);
  //image(imageName, 0, 0);
  //pop();push();  
  
  //you need to believe in yourself
  translate(width*-0.226, height*0.195);
  rotate(TAU*0.000);
  scale(2.00);
  image(abe, 0, 0);
  pop();push();   
  
  //weights lady
  translate(width*-0.568, height*-0.072);
  rotate(TAU*-0.208);
  scale(0.71);
  image(weights, 0, 0);
  pop();push();  
  
  //flip'em the bird
  scale(3);
  image(bird, width*-0.146, height*0);
  pop();push();
  
  //arc
  translate(width*0.17, height*0.00);
  scale(1.23);
  image(arc, 0, 0);
  pop();push();
  
  //body
  translate(width*-0.25, height*0.33);
  scale(0.639);
  image(murka, 0, 0);
  //head
  scale(0.664);
  image(ron, 0, -489);
  pop();push();
  
  //flipper
  translate(width*-0.311, height*-0.285);
  rotate(PI*0.792);
  scale(1.66);
  image(flip, 0, 0);
  pop();push();
    
  //singing guy
  translate(width*-0.165, height*-0.129);
  scale(1.00);
  rotate(TAU*0.53);
  image(sing, 0, 0);
  pop();push();
  
  //hat
  translate(width*-0.241, height*0.201);
  scale(1.942);
  rotate(TAU*0.042);
  imageMode(CENTER);
  image(hat, 0,0);
  pop();push();
    
  //train puke
  translate(width*-0.544, height*-0.073);
  rotate(TAU*-0.191);
  scale(0.70);
  image(train, 0, 0);
  pop();push();
  
  //bricks lady
  translate(width*-0.002, height*-0.154);
  rotate(TAU*0.26);
  scale(0.69);
  image(brick, 0, 0);
  pop();push();
  
  //she was a...wait no
  translate(width*0.084, height*-0.064);
  rotate(TAU*-0.197);
  scale(1.25);
  image(sk8, 0, 0);
  pop();push();  
  
  pop();
  //if (frameCount == 1){save("GD105 Spr24 EHuq a2r1 output.png");}
}
