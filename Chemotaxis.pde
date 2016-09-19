Bacteria bob;
Bacteria [] colonies;
int colonyNum = 2000;
int foodX = 300;
int foodY = 300;
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
 	background(255);
 	food();
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i].move();
 		colonies[i].show();
 	}
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
 		if(bacX >= foodX)
 		{
 			bacX = bacX - (int)(Math.random()*9);
 		}
 		else 
 		{
 			bacX = bacX + (int)(Math.random()*9);	
 		}
 		if(bacY >= foodY)
 		{
 			bacY = bacY - (int)(Math.random()*9);
 		}
 		else
 		{
 			bacY = bacY + (int)(Math.random()*9);	
 		}
 	}
 	void show()
 	{
 		fill((int)(Math.random()*156),(int)(Math.random()*156),(int)(Math.random()*156));
 		ellipse(bacX, bacY, 10, 10);
 	}
 }
 void food()
 {
 	fill(0, 255, 0);
 	ellipse(foodX, foodY, 50, 50);
 }  
 void keyPressed()
 {
 	if(keyCode == UP)
 	{
 		foodY-=5;
 	}
 	else if (keyCode == DOWN)
 	{
 		foodY+=5;
 	}
 	else if (keyCode == LEFT)
 	{
 		foodX-=5;	
 	}
 	else if ( keyCode == RIGHT)
 	{
 		foodX+=5;
 	}
 }