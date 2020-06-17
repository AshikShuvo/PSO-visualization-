class Particle{
  float X;
  float Y;
  float valX;
  float valY;
  float localcost;
  Pbest pb;
  Particle(float x,float y){
    X=x;
    Y=y;
    valX=0;
    valY=0;
   pb=new Pbest(x,y);
  
  }
  void setdata(float x,float y,float vx,float vy){
  X=x;
  Y=y;
  valX=vx;
  valY=vy;
  
}
void setValx(float x){
  valX=x;
}
void setValy(float y){
  valY=y;
}
float getValx(){
    return valX;
  }
  float getValy(){
    return valY;
  }
  float getx(){
    return X;
  }
float gety(){
  return Y;  
}
float getcst(){
  return localcost;
}
void show(){
  ellipse(X, Y, 15, 7);

}
}
