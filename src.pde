Slider[] list = new Slider[6];
float[] v = new float [6];

void setup(){
size(1700,1000);
 for(int i = 0; i<list.length; i++){
 list[i] = new Slider(this, i*100+100);
 }
 list[0].value0 = 10;
 list[0].value1 = 40;
 list[1].value1 = 1000;

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

 

  
