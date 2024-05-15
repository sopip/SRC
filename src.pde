GUIbase[] list = new Slider[6];
float[] v = new float [6];
Toggle knappelap;

void setup(){
size(1700,900);
 for(int i = 0; i<2; i++){
 list[i] = new Slider(this,1000, i*100+100,30,20,0,0.4);
 }
 for(int i = 2; i<list.length; i++){
 list[i] = new Slider(this,1000, i*100+100,30,20,0,100);
 }
 knappelap = new Toggle(this,width/2,height - 300,100,50);

}

float circ(float x, float y, float cx, float cy, float r ) {
  return pow(x-cx,2) + pow(y-cy,2) - r*r;
}
//Det er overridet og at det hele er i guibase der gør det abstrakt jububuuubuibibibiibib

float heart(float x, float y){
  Slider sl0;
  Slider sl1;
  float xx = x-50;
  float yy = y-50;
  sl0 = (Slider) (list[0]);
  sl1 = (Slider) (list[1]);
//  return circ(x, y, 100,200,50)*circ(x, y, 200,200,30)*circ(x, y, 50,100,50)-list[0].vari()*x*y;
//Sikkerhedskopi af peanut return circ(xx, yy, 100,20,30)*circ(xx, yy, 200,200,30)-10000*list[0].vari()*xx*yy;
  return pow(abs(xx),1.8+sl0.vari())+pow(yy-pow(abs(xx),0.6+sl1.vari()),2)-1000;
}

float peanut(float x, float y){
  Slider sl;
  float xx = x-50;
  float yy = y-50;
  sl = (Slider) (list[0]);
  return circ(xx, yy, 60,20,30)*circ(xx, yy, 100,100,30)-1000*sl.vari()*xx*yy;
}

void draw(){
  float implicitVal;
background(100);
stroke(255);
knappelap.draw();

for(GUIbase s : list){
    s.draw();
 }

 for(int x=0;x<200;x++){
  for(int y=0;y<200;y++){
    if (knappelap.toggled) {
      implicitVal = heart(float(x),float(y));
    } else {
      implicitVal = peanut(float(x),float(y));
    }
    if(implicitVal>0){
      stroke(0,0,255);
    }else{
      stroke(255,0,0);
    }
    point(x,200-y);
   }
  }
}

void mousePressed() {
  for(GUIbase s : list){
    s.pressed();
  }
  knappelap.pressed();
 }
void mouseDragged() {
  for(GUIbase s : list){
    s.dragged();
  }
 }
void mouseReleased() {
  for(GUIbase s : list){
    s.released();
  }
 }

  
