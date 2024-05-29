import processing.core.*;
public class GUIbase {
    protected float width, height;
    protected float posx, posy;
    private float xoff;
    private boolean locked;
    protected PApplet p;
  
    public GUIbase(PApplet pin, int xin, int yin, int win, int hin) {
      p = pin;
      posx = xin;
      posy = yin; 
      width = win;
      height = hin;
    }
  public void draw() {
  }
  public boolean isOver(){
    return ((p.mouseX<posx+width/2) && (p.mouseX>posx-width/2) && (p.mouseY<posy+height/2) && (p.mouseY>posy-height/2));
  }

  public void pressed() {
    if (isOver()) {
      locked = true;
      xoff = p.mouseX-posx;
    }
  }

  public void dragged() {
    if (locked) {
      posx = p.mouseX-xoff;
    }
  }

  public void released() {
    locked = false;
  }
 }