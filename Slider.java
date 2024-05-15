//nu er det her underklasse
import processing.core.*;

public class Slider extends GUIbase{
    private float linePos = 1300; //x-positionen til linjen er 1300.
    private float lineLength = 300; //linjen til sliders er 300
    public float value0; //disse er start og slutværdier for de individuelle sliders.
    public float value1; //Før var værdierne 0 og 100 men det skal ændres. Kan også være float
    //private PApplet p; //for at bruge processing-ting

    public Slider(PApplet pin, int xin, int yin, int win, int hin, float value0, float value1) {
        //pin osv. er fra superklasse så de skal FØRST skrives
        super(pin, xin, yin, win, hin);
        this.value0 = value0;
        this.value1 = value1;
      }

      public void sliderDraw() {
        p.rectMode(p.CENTER);
        p.line (linePos, posy, linePos + lineLength, posy);
        if (isOver()) {
          p.fill(200);
        } else {
          p.fill(255);
        }
    
        if (posx < linePos) {
          posx = linePos;
        }
        if (posx > linePos + 300) {
          posx = linePos + 300;
        }
        p.rect(posx, posy, width, height);
      }
      public float vari(){
        float t=(posx-linePos)/lineLength;
        return t*(value1-value0)+value0;
      }
      public void textDraw(){
          p.stroke(255);
          p.textSize(20);
          p.text((vari()),linePos+lineLength+20,posy+5); //text placeres til højre for slideren og 5 pixels længere nede fordi det er skævt
      }
}