Bacteria bob;
Bacteria [] colonies;
 void setup()   
 {     
 	size(600,600);
 }   
 void draw()   
 {    
 	background(0);
 	colonies = new Bacteria[8];
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i] = new Bacteria(300,300);
 	}
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i].move();
 		colonies[i].show();
 	}
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