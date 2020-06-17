class GlobalBest{
  float gbestPositionX;
   float gbestPositionY;
   float gbestCost;
   GlobalBest(float g){
     gbestCost=g;
   
   }
   void setData(float x,float y,float z){
    gbestPositionX=x;
    gbestPositionY=y;
    gbestCost=z;
   }
   float getx(){
     return gbestPositionX;
   }
    float gety(){
     return gbestPositionY;
   }
    float getG(){
     return gbestCost;
   }
}
