Bacteria bob;
 void setup()   
 {     
 	size(600,600);  
 }   
 void draw()   
 {    
 	background(0);
 	bob = new Bacteria(300, 300);
 	bob.move();
 	bob.show();
 }  
 class Bacteria    
 {     
 	int bacX, bacY;
 	Bacteria(int myX, int myY)
 	{
 		bacX = myX;
 		bacY = myY;
 	}
 	void move()
 	{
 		bacX = bacX + (int)(Math.random()*11) - 5;
 		bacY = bacY + (int)(Math.random()*11) - 5;
 	}
 	void show()
 	{
 		fill(255, 0,0);
 		ellipse(bacX, bacY, 10, 10);
 	}
 }    