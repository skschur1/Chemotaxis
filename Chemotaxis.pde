Bacteria bob;
Bacteria [] colonies;
int colonyNum = 1;

 void setup()   
 {     
 	size(600,600);
 	frameRate(20); 
 	colonies = new Bacteria[colonyNum];
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i] = new Bacteria(300,300);
 	}
 	 	bob = new Bacteria(300, 300);
 }   
 void draw()   
 {    
 	background(0);
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i].move();
 		colonies[i].show();
 	}
 	bob.move();
 	bob.show();
 }  
 void mousePressed()
 {
 	colonyNum ++;
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
 		bacX = bacX + (int)(Math.random()*9) - 4;
 		bacY = bacY + (int)(Math.random()*9) - 4;
 	}
 	void show()
 	{
 		fill(255, 0,0);
 		ellipse(bacX, bacY, 10, 10);
 	}
 }    