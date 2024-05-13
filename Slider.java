import processing.core.*;
public class Slider {
    private float sliderWidth = 30;
    private float sliderHeight = 20;
    private float posy, xoff;
    private float linePos = 1300;
    private float posx = linePos;
    private float linelength = 300;
    private boolean over = false;
    private boolean locked = false;
    private PApplet p;
    public float value0 = 0;
    public float value1 = 100;

  
    public Slider(PApplet pin, int yin) {
      posy=yin;
      p = pin;
    }
  
    public void sliderDraw() {
      p.rectMode(p.CENTER);
      p.line (linePos, posy, linePos + linelength, posy);
      if ((p.mouseX<posx+sliderWidth/2) && (p.mouseX>posx-sliderWidth/2) && (p.mouseY<posy+sliderHeight/2) && (p.mouseY>posy-sliderHeight/2)) {
        p.fill(200);
        over = true;
      } else {
        p.fill(255);
        over = false;
      }
  
      if (posx < linePos) {
        posx = linePos;
      }
      if (posx > linePos + 300) {
        posx = linePos + 300;
      }
      p.rect(posx, posy, sliderWidth, sliderHeight);
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