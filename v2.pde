  int particleSize=10;
  int height=1200;
  int width=1200;
  Particle[] p=new Particle[particleSize];
  float w=0.3;
   float c0=1.7970;
   float c1=1.7970;
   float c2=1.7970;
  Goal g;
  GlobalBest gb;
  boolean gs=false;
  float cost(float x,float y){
    float r=sq(g.getx()-x)+sq(g.gety()-y);
    return r;
  
  }
void setup(){
  size (1200,1200);
  frameRate(10);
  
 
}


void draw(){
  background(0);

    if(mousePressed){
     g=new Goal(mouseX,mouseY);
     g.show();
     gb=new GlobalBest(100000.0);
     for(int i=0;i<particleSize;i++){
       p[i]=new Particle(random(0,300),random(0,300));
       p[i].localcost=cost(p[i].getx(),p[i].gety());
       p[i].pb.setData(p[i].getx(),p[i].gety(),p[i].getcst());
       if(p[i].pb.getG()<gb.getG()){
         gb.setData(p[i].getx(),p[i].gety(),p[i].pb.getG());
       }
       p[i].show();
     }
     
     gs=true;
    }
     else if(gs==true){
       
       g.show();
       for(int l=0;l<particleSize;l++){
         p[l].show();
       
       }
       for(int k=0;k<particleSize;k++){
         float valx=(w * p[k].getValx()+c1 * random(0,1) * (p[k].pb.getx()-p[k].getx())+c2*random(0,1) * (gb.getx()-p[k].getx()));
         float valy=(w * p[k].getValy()+c1 * random(0,1) * (p[k].pb.gety()-p[k].gety())+c2*random(0,1) * (gb.gety()-p[k].gety()));
         float psx=p[k].getx()+valx;
         float psy=p[k].gety()+valy;
         p[k].setdata(psx,psy,valx,valy);
         p[k].localcost=cost(p[k].getx(),p[k].gety());
         if(p[k].getcst()<p[k].pb.getG()){
           p[k].pb.setData(p[k].getx(),p[k].gety(),p[k].getcst());
         
         }
         if(p[k].pb.getG()<gb.getG()){
           gb.setData(p[k].pb.getx(),p[k].pb.gety(),p[k].pb.getG());
         }
       
       
       }
     
     }
  
  
  
  
}
