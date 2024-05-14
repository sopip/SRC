import processing.core.*;
public class GUIbase {
    private float width, height;
    private float posx, posy, xoff;
    private boolean over = false;
    private boolean locked = false;
    private PApplet p;

  
    public GUIbase(PApplet pin, int win, int hin, int xin, int yin) {
      p = pin;
      width = win; //skal være 30
      height = hin; //skal være 20
      posx = xin;
      posy = yin;
      
    }
  
//her var sliderdraw

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

    public float vari(){
      float t=(posx-linePos)/linelength;
      return t*(value1-value0)+value0;
    }
    public void textDraw(){
        p.stroke(255);
        p.textSize(20);
        p.text((vari()),linePos+linelength+20,posy+5);
    }
  }