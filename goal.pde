class Goal{
  float X;
  float Y;
  Goal(float x,float y){
    X=x;
    Y=y;
  }
void Setdata(float x,Float y){
  X=x;
  Y=y;
}
float getx(){
return X;
}
float gety(){
  return Y;
}
void show(){
  circle(X, Y, 55);

}

}
