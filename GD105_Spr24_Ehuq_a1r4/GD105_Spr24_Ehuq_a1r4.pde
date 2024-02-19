//A map of my bookbag's organizational layout, for my own memory.
//gotta declare variables out here if I 
//want to use them in both setup and draw

PFont ocra10;
String laptop = new String("Laptop Pocket");
String main = new String("Main Pocket: Books, Laptop Power Cable, Switch, Large Things, Miscellaneous");
String note = new String("Class-Specific Notebooks and Folders");
String quick = new String("Quick Access: Hand Balm, 1D6, Pens & Pencils");
String left = new String("Coffee");
String right = new String("Water");

void setup(){
//Variables delared in setup are not available outside of setup. (That explains that)
//Set the size of the canvas. Let's go with square.
  size(1000, 1000); //(TIL size has to be first)
  ocra10 = loadFont("OCRAExtended-10.vlw");  
  windowTitle("The Map Piece (WIP)");
  
}

void draw(){ //Draw the map.
//fml I already forgot how to do fonts and shit.
  textFont(ocra10, 30);

//Rememer to get a BG in first. Let's try a parchment-like color.
  background(#fef9bf); //close enough

//main body
  fill(#f4ddf0);
  rectMode(CENTER);
  stroke(#bf78b4);
  rect(width*0.5, height*0.5, width*0.830, height*0.966, 300, 300, 40, 40);
  
//align the boxes (pokewi is a portmanteau of "pocket" and "width")
float pokewi = width*0.67;

//Drawing the internal compartments.
//Laptop pocket
  rect(width*0.50, height*0.138, pokewi, 95, 500, 500, 10, 10);
//Main pocket
  rect(width*0.50, height*0.340, pokewi, 216, 10);
//Notebooks
  rect(width*0.50, height*0.546, pokewi, 118, 10);
//Quick Access
  rect(width*0.50, height*0.770, pokewi, 238, 10);
//Left pocket
  rect(width*0.05, height*0.800, 70, 300, 10);
//Right pocket
  rect(width*0.95, height*0.800, 70, 300, 10);
  
//Pocket labels/contents:
  fill(#bf78b4);
  textAlign(CENTER, CENTER);
  text(laptop, width*0.5, height*0.138, pokewi, 95);
  text(main, width*0.5, height*0.340, pokewi, 216);
  text(note, width*0.5, height*0.546, pokewi, 118);
  text(quick, width*0.5, height*0.770, pokewi, 238);
  push();
  translate(0, height);
  rotate(TAU*-0.25);
  text(left, width*0.20, height*0.05);
  pop();
  push();
  translate(width, 0);
  rotate(TAU*0.25);
  text(right, width*0.80, height*0.05);
  pop();
  
//a guidelines matrix to help me estimate placement
  //horiontal lines
  //stroke(195);
  //line(0, height/2, width, height/2);
  //line(0, height*0.25, width, height*0.25);
  //line(0, height*0.75, width, height*0.75);
  ////vertical lines
  //line(width/2, 0, width/2, height);
  //line(width*0.25, 0, width*0.25, height);
  //line(width*0.75, 0, width*0.75, height);
  
  //a tool to see coordinates so I can skip the trial and error, because I have goddamn dyscalculia
  //fill(0);
  //textSize(20);
  //text("x: "+mouseX+", y: "+mouseY, mouseX, mouseY);
  
  
if (frameCount == 1){save("GD105 Spr24 EHuq a1r4 output WIP.png");}
}
