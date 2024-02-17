//A map of my bookbag's organizational layout, for my own memory.
//gotta declare variables out here if I 
//want to use them in both setup and draw

PFont ocra10;

void setup(){
//Variables delared in setup are not available outside of setup. (That explains that)
//Set the size of the canvas. Let's go with square.
  size(1000, 1000); //(TIL size has to be first)
  ocra10 = loadFont("OCRAExtended-10.vlw");  
  
}

void draw(){ //Draw the map.
//fml I already forgot how to do fonts and shit.
  textFont(ocra10, 30);

//Rememer to get a BG in first. Let's try a parchment-like color.
  background(#F0EED5); //close enough

//gonna try to make a guidelines matrix to help me estimate placements.
  //horiontal lines
  stroke(195);
  line(0, height/2, width, height/2);
  line(0, height*0.25, width, height*0.25);
  line(0, height*0.75, width, height*0.75);
  //vertical lines
  line(width/2, 0, width/2, height);
  line(width*0.25, 0, width*0.25, height);
  line(width*0.75, 0, width*0.75, height);
  
//if (frameCount == 1){save("GD105 Spr24 EHuq a1p3 output.png");}
}
