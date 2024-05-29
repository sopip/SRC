import processing.core.*;

public class Toggle extends GUIbase{
  public boolean toggled = false;
  public Toggle(PApplet pin, int xin, int yin, int win, int hin) {
    super(pin, xin, yin, win, hin);
  }
  public void draw() {
    p.fill(245,174,240);
    p.rect(posx, posy, width, height);
    p.fill(0);
    if(toggled){
      p.rect(posx,posy-height/4,width,height/2); //det ser sjovt ud fordi rect er centreret
    }else{
      p.rect(posx,posy+height/4,width,height/2);
    }
  }

  public void pressed() {
    if(isOver()){
    toggled = !toggled;
    super.pressed();
    }
  }
}
