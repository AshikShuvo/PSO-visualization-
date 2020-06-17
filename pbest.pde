class Pbest{
    float bestPositionX;
    float bestPositionY;
    float bestCost;
  Pbest(float x,float y){
    bestPositionX=x;
    bestPositionY=y;
  
  }
  void setData(float x,float y,float z){
     bestPositionX=x;
     bestPositionY=y;
     bestCost=z;
  
  }
  float getx(){
     return bestPositionX;
   }
    float gety(){
     return bestPositionY;
   }
    float getG(){
     return bestCost;
   }

}
