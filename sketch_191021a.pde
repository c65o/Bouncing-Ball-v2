//Floats
float x=0,y=0,w=910,h=720;
float xspeed=2,yspeed=2;

//størreslse på skærmen
void setup (){
  size(910, 720);
}

//bold
void draw() { 
  clear();
  background(34, 81, 125);
  
//kasse
  fill(255, 204, 0);
  rect(0, 0, w, h);
  
   fill(255, 204, 0);
  ellipse(x, y, 10, 10);
  
//mindre kasse
  h = h- 0.7;
  w = w- 0.3;
  
//velocity
   x = x+ xspeed*1.4;
   y = y+ yspeed*1.4;

//bounce
  if(x+5 > w){xspeed *=-1;x =w-5;}
  if(x-5 < 0){xspeed *=-1;x =0+5;}
  if(y+5 > h){yspeed *=-1;y =h-5;}
  if(y-5 < 0){yspeed *=-1;y =0+5;}
}
