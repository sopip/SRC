import processing.core.*;

public class Tryk{
    private PApplet p;
    private float posx, posy, xoff;
    private boolean over = false;
    private boolean locked = false;

    public Tryk(PApplet pin) {
        p = pin;
      }

    void trykDraw(){
        p.rectMode(p.CENTER);

    }



    public void pressed() {
        if (over) {
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