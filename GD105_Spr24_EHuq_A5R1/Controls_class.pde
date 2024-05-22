/** I don't know that this makes sense to have a class for. Will the controls be an object?
 Objects? I'm not sure, but it seems like they should be a cluster of functions, and for that
 I think an object makes sense? */

class Controls {
  //data

  //constructor(s) - ah, maybe I can overload this to call different control schema for dif. screens
  Controls (String type /*or something*/) {
    if (type == "home") {
      this.initHome();
    } else if (type == "other") {
      this.initOther();
    }
  }

  //methods  (I imagine this section will form the majority of the class)
  void initHome() {
    //initialize the home screen controls config
  }
  void initOther() {
    //initialize alternate controls config (might not need this)
  }
}

class Button {
  //data

  //constructor
  Button () {
  }

  //methods
  void select () {
  }
}
