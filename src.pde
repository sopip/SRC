Knap plusKnap, minusKnap, resetKnap;
Volumen vol; 

void setup(){
size(1500,1000);
public int[]talvardi= {1,2,3,9,0,4,5,8,7,6};


  plusKnap = new Knap(10,10,100,50,"Plus");
  minusKnap = new Knap(10,70,100,50,"Minus");
  resetKnap = new Knap(10,130,100,50,"Reset");
  vol = new Volumen(fiat500,120,10,120,50);

}

void draw(){
background(0);


  plusKnap.tegnKnap();
  minusKnap.tegnKnap();
  resetKnap.tegnKnap();
  vol.tegnVolumen();
  if(mousePressed && plusKnap.knapKlik(mouseX,mouseY)){
    vol.ændrVol(1);
  }
  if(mousePressed && minusKnap.knapKlik(mouseX,mouseY)){
    vol.ændrVol(-1);
  }
  if(mousePressed && resetKnap.knapKlik(mouseX,mouseY)){ 
   vol.resetknap();
  
 }
}
