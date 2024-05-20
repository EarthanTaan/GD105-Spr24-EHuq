/** I'll need a class that can create objects I can glue an image, corrdinates, and importantly,
a size onto. */

class Icon {
  
/**fields (data)*/
//image
PImage weaponImg;
//size
int size;
//placement
PVector place;
//transparency
int alpha;
//statistical data: times used
int uses;

/**constructor(s) (initial values)*/
Icon (PImage tempImg, PVector tempVect, int tempUses) {
  weaponImg = tempImg;
  place = tempVect;
  size = 0; //Placeholder. This changes dynamically based on uses, but min/init should be > 0
  alpha = 50;  //This should just be a static value I think.
  uses = tempUses;
}

/**methods (functions & functionality)*/
//Display on the screen (maybe? I might not need this.
void show() {
  image(weaponImg, place.x, place.y);
}

void increase() {
  
}

/**end of Icon class */ }
