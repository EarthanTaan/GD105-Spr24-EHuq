/** I'll need a class that can create objects I can glue an image, corrdinates, and importantly,
a size onto. */

class Icon {
  
/**fields (data)*/
//image
PImage weaponImg;
//size
float size;
//placement
PVector place;
//transparency (this might be too complicated)
int alpha;
//statistical data: times used
int uses;

/**constructor(s) (initial values)*/
Icon (PImage tempImg, PVector tempVect, int tempUses) {
  weaponImg = tempImg;
  size = 50; //This changes dynamically based on uses.
  place = tempVect;
  alpha = 50;  //This should just be a static value I think. Currently unused.
  uses = tempUses * 2 + int(size/2);
}

/**methods (functions & functionality)*/
//Display on the screen (maybe? I might not need this.
void show() {
  image(weaponImg, place.x, place.y, size, size);
}

//should this just be rolled into show() ?
void measure() {
  size = (lerp(size, uses, frameCount * 0.01));
  //bigger than before
}

/**end of Icon class */ }
