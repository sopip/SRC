//nu er det her underklasse

public class Slider extends GUIbase{
    private int linePos = 1300; //x-positionen til linjen er 1300.
    private int lineLength = 300; //linjen til sliders er 300
    private int value0; //disse er start og slutværdier for de individuelle sliders.
    private int value1; //Før var værdierne 0 og 100 men det skal ændres. Kan også være float
    private PApplet p; //for at bruge processing-ting


    public Slider(PApplet pin, int win, int hin, int xin, int yin, float value0, float value1) {
        //pin osv. er fra superklasse så de skal FØRST skrives
        super(pin, win, hin, xin, yin);
        this.value0 = value0;
        this.value1 = value1;

      }

      public void sliderDraw() {
        p.rectMode(p.CENTER);
        p.line (linePos, posy, linePos + linelength, posy);
        if ((p.mouseX<posx+width/2) && (p.mouseX>posx-width/2) && (p.mouseY<posy+height/2) && (p.mouseY>posy-height/2)) {
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
        p.rect(posx, posy, width, height);
      }
}