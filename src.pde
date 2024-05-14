Slider[] list = new Slider[6];
float[] v = new float [6];

void setup(){
size(1700,1000);
 for(int i = 0; i<list.length; i++){
 list[i] = new Slider(this, i*100+100);
 }
 list[0].value1 = 0.4;
 list[1].value1 = 0.4;

}

float circ(float x, float y, float cx, float cy, float r ) {
  return pow(x-cx,2) + pow(y-cy,2) - r*r;
}

float implicit(float x, float y){
  float xx = x-50;
  float yy = y-50;
//  return circ(x, y, 100,200,50)*circ(x, y, 200,200,30)*circ(x, y, 50,100,50)-list[0].vari()*x*y;
//  return circ(x, y, 100,200,50)*circ(x, y, 200,200,30)-list[0].vari()*x*y;
  return pow(abs(xx),1.8+list[1].vari())+pow(yy-pow(abs(xx),0.6+list[0].vari()),2)-1000;
}

void draw(){
background(100);
for(Slider s : list){
    s.sliderDraw();
    s.textDraw();
 }

for (int i = 0; i<6; i++){
v[i] = list[i].vari();
println(i,"  ",v[i]);
 }

 for(int x=0;x<200;x++){
  for(int y=0;y<200;y++){
    if(implicit(float(x),float(y))>0){
      fill(0,0,255);
      circle(x,y,2);
    }else{
      fill(255,0,0);
      circle(x,y,2);
    }
   }
  }
}

void mousePressed() {
  for(Slider s : list){
    s.pressed();
  }
 }
void mouseDragged() {
  for(Slider s : list){
    s.dragged();
  }
 }
void mouseReleased() {
  for(Slider s : list){
    s.released();
  }
 }

  
