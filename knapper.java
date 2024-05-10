//knapper
import processing.core.*;
class Knap{
  int x, y, w, h;
  String titel;
  
  Knap(int xin, int yin, int win, int hin, String titelin){ // in for input så det ikke bliver forvirrende med ens navne
    x = xin;
    y = yin;
    w = win;
    h = hin;
    titel = titelin;
  }
  
  // funktionalitet
  boolean knapKlik(int xin, int yin) {
    boolean hitY = xin > x && xin < x + w;
    boolean hitX = yin > y && yin < y + h;    
    return hitX && hitY;
  }
  
  void tegnKnap() {
    fill(255);
    rect(x,y,w,h);
    textSize(20);
    fill(0);
    text(titel,x+10,y+h/2);
  } 
}

class Volumen {
  int x, y, b, h;


  Volumen(int xin, int yin, int bin, int hin){
    x = xin;
    y = yin;
    b = bin;
    h = hin;
  }
  
  void tegnVolumen(){
    rect(x,y,b,h);
  }
  
  void ændrVol(int v){
    b = b + v;
  }
  // funktionalitet
  void resetknap(){
  b=100;
  }
}




/*
public class button(){
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  
  public button(PApplet p, int ){


  }
*/




