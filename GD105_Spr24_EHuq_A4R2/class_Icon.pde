/** I'll need a class that can create objects I can glue an image, corrdinates, and importantly,
a size onto. */

class Icon {
/**fields (data)*/
//image
PImage weapon;
//size
int size;
//placement
PVector place;
//transparency
int alpha;


/**constructor(s) (initial values)*/
Icon () {
  weapon = new PImage();
  size = 0;  //this changes dynamically based on the data.
  place = new PVector();
  alpha = 50;  //This should just be a static value I think.
}

/**methods (functions & functionality)*/
//Display on the screen (maybe? I might not need this.
void show() {
  
}

/**end of Icon class */ }
