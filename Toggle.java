//Her skal være knapper
import processing.core.*;

public class Toggle extends GUIbase{
  public boolean toggled = false;
  public Toggle(PApplet pin, int xin, int yin, int win, int hin) {
    super(pin, xin, yin, win, hin);
  }
  public void draw() {
    p.fill(245,174,240);
    //her kunne jeg p.rectMode(p.CORNER) for det ville blive fint men det stemmer ikke med isOver :(
    p.rect(posx, posy, width, height);
    p.fill(0);
    if(toggled){
      p.rect(posx,posy-height/4,width,height/2);
    }else{
      p.rect(posx,posy+height/4,width,height/2);
    }
  }

  @Override
  public void pressed() {
    if(isOver()){
    toggled = !toggled;
    super.pressed();
    }
  }

  public void toggleChange(){
    if(toggled){
//Skal kunne skifte imellem hjerte og peanut
    }
  }
}




/* Put public foran klasser og funktioner
 * Private foran variable f.eks. (at tænde motoren er public men hvordan motoren virker behøver man ikke at vide)
 * p. foran println, rect, fill, rectMode, CENTER, mouseX
 * import processing.core.*; i toppen
 * private PApplet p; I variablene. Jeg tror det er den der gør at man kan sige p. (Det fikser problem med at den ikke kan finde 'opo')
 * I konstrukteren skal den første tingting være PAppletpin, og så nedenunder står der p = pin og der hvor man laver objektet skal der først stå this.
 * hvis underklasse skal der være extends og superklasse skal være først i constructor og nedenunder skal der stå f.eks. super(pin, yin); i stedet for pin = p eller whatnot
 */