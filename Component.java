/*import processing.core.*;

public class Component{
    private int hejhejhej;  //skal goså lige erttes igen
    private float xPos, yPos, width, height;
    private boolean inside = false;
    private boolean locked = false;

    public Tryk(int hejhejhej, PApplet pin, int yin) { //det her skal lige rettes igen
        //pin og yin er fra superklasse så de skal FØRST skrives
        super(pin, yin);
        this.hejhejhej = hejhejhej;
      }

    void trykDraw(){
        //tegn firkant jubi
    }

    public void tester() {
    if(p.mouseX>xPos && p.mouseX<xPos+width && p.mouseY>yPos && p.mouseY<yPos+height){
        inside = true;
    } else {
        inside = false;
      }
    }

    public void pressed() {
        if (inside) {
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


}*/