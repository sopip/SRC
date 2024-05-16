GUIbase[] list = new Slider[2];
float[] v = new float [2];
Toggle knappelap;

void setup(){
  size(700,500);
  for(int i = 0; i<list.length; i++){
    list[i] = new Slider(this,0, i*100+50,30,20,0,0.4); //xpos, 0, bliver bare det laveste for det kan ik gå ud over linjen
  }
  knappelap = new Toggle(this,250,100,40,80);
}

float circ(float x, float y, float cx, float cy, float r ) {
  return pow(x-cx,2) + pow(y-cy,2) - r*r;
}

float heart(float x, float y){
  Slider sl0;
  Slider sl1;
  float xx = (x-100)/50; //så hjertet skubbes til 0,0 og kan regnes på
  float yy = (y-100)/50;
  sl0 = (Slider) (list[0]);
  sl1 = (Slider) (list[1]);
// kan ikke huske hvad det her er return circ(x, y, 100,200,50)*circ(x, y, 200,200,30)*circ(x, y, 50,100,50)-list[0].vari()*x*y;
  return pow(abs(xx),1.8+sl0.vari())+pow(yy-pow(abs(xx),0.6+sl1.vari()),2)-1000;
  // return pow(abs(xx),2)+pow(yy-pow(abs(xx),0.666),2)-1;
}

float peanut(float x, float y){
  Slider sl;
  float xx = x-50;
  float yy = y-50;
  sl = (Slider) (list[0]);
  return circ(xx, yy, 60,20,30)*circ(xx, yy, 100,100,30)-50000000*sl.vari();
}

void draw(){
  float implicitVal;
  background(66,36,64);
  noStroke();
  knappelap.draw();
  stroke(255);

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
        stroke(125,81,122);
      }else{
        stroke(245,174,240);
      }
      point(x,200-y);
    }
  }
  text("En implicit formel har den generelle formel f(x,y)=0. Den kan ikke plotte en \nparabel, men finde hvilke koordinater der er på hver sin side af parablen. Med \ndette kan der tegnes en prik for de koordinater der findes ude for en cirkel \n(der kommer altså her et negativt tal) og de positive tal inden for cirklen. \nHvis to ligninger for cirkler af formen x^2 + y^2 -r^2 multipliceres, og der \nherefter ganges en ny værdi på, vil der nu forme sig en 'peanut'-form. \nDette kaldes for Cassinis Oval. \npå samme måde kan en hjerteform på den matematiske form (øh kan jeg ikke huske) \nkunne plottes ved denne metode.",20,270);
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

  
