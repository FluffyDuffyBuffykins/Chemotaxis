 Bacteria[] colony;   
 void setup()   
 {     
 	colony = new Bacteria[1000];
 	size(500, 500);  
 	background(255); 
 	noStroke();
 	for(int i = 0; i < colony.length; i++)
 		colony[i] = new Bacteria(250, 250);
 }   
 void draw()   
 {    
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	} 
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(int x, int y){
 		myX = x;
 		myY = y;
 		myColor = color((int)(Math.random() * 155 + 100), (int)(Math.random() * 155 + 100), (int)(Math.random() * 155 + 100));
 	}
 	void move(){
 		myX = myX + (int)(Math.random()*6 - 3);
 		myY = myY + (int)(Math.random()*6 - 3);
 	}
 	void show(){
 		fill(myColor);
 		ellipse(myX, myY, 3, 3);
 	}
 }    