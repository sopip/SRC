Slider[] allSliders = new Slider[2];
float[] v = new float [2];
Toggle oneToggle;
//allGUIBase array af dem alle 3
PImage heart;

void setup(){
  heart = loadImage("hjerte_src.png"); //formlen altså
  heart.resize(150,0);
  size(700,500);
  for(int i = 0; i<allSliders.length; i++){
    allSliders[i] = new Slider(this,0, i*100+50,30,20,0,0.4); //xpos, 0, bliver bare det laveste for det kan ik gå ud over linjen
  }
  oneToggle = new Toggle(this,250,100,40,80);
}

float circ(float x, float y, float cx, float cy, float r ) {
  return pow(x-cx,2) + pow(y-cy,2) - r*r;
}

void readSliders(){
  for (int i = 0; i<allSliders.length; i++){
    v[i] = allSliders[i].vari();
  }
}

float heart(float x, float y){
  readSliders();
  float xx = (x-100); //så hjertet skubbes til 0,0 og kan regnes på
  float yy = (y-100);
  return (pow(abs(xx),1.8+v[0])+pow(yy-pow(abs(xx),0.6+v[1]),2)-1000);
  // return pow(abs(xx),2)+pow(yy-pow(abs(xx),0.666),2)-1;
}

float peanut(float x, float y){
  readSliders();
  float xx = x-50;
  float yy = y-50;
  return circ(xx, yy, 60,20,40)*circ(xx, yy, 100,100,30)-50000000*allSliders[0].vari(); //ændr på 40 for pære
}

void draw(){
  float implicitVal;
  background(66,36,64);
  noStroke();
  oneToggle.draw();
  stroke(255);

  for(GUIbase s : allSliders){
    s.draw();
  }
  
  if (oneToggle.toggled) {
    allSliders[0].value1 = 0.8;
  } else {
    allSliders[0].value1 = 0.4;
  }
  for(int x=0;x<200;x++){
    for(int y=0;y<200;y++){
      if (oneToggle.toggled) {
        implicitVal = heart(float(x),float(y));
      } else {
        implicitVal = peanut(float(x),float(y));
      }
      if(implicitVal>0){
        stroke(125,81,122);
      } else {
        stroke(245,174,240);
      }
      point(x,200-y);
    }
  }
  text("En implicit formel har den generelle formel f(x,y)=0. Den kan ikke plotte en \nparabel, men finde hvilke koordinater der er på hver sin side af parablen. Med \ndette kan der tegnes en prik for de koordinater der findes uden for en cirkel \n(der kommer altså her et negativt tal) og de positive tal inden for cirklen. \n \nHvis to ligninger for cirkler af formen x^2 + y^2 -r^2 multipliceres, og der \nherefter lægges en ny værdi til, vil der nu forme sig en 'peanut'-form. \nPå samme måde kan en hjerteform på den matematiske form \nkunne vises ved denne metode.",20,270);
  image(heart,540,410); //kan ikke skrive matematik i tekst så indsætter et billede :,)
}

void mousePressed() {
  for(GUIbase s : allSliders){
    s.pressed();
  }
  oneToggle.pressed();
 }
void mouseDragged() {
  for(GUIbase s : allSliders){
    s.dragged();
  }
 }
void mouseReleased() {
  for(GUIbase s : allSliders){
    s.released();
  }
 }
