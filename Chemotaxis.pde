Bacteria [] colonies;
int foodX = 300;
int foodY = 300;
 void setup()   
 {     
 	size(600,600);
 	frameRate(20); 
 	colonies = new Bacteria[200];
 	for(int i = 0; i < colonies.length; i++)
 	{
 		colonies[i] = new Bacteria(300,300);
 	}
 }   
 void draw()   
 {    
 	background(255);
 	food();
 	for(int i = 0; i < colonies.length; i++)
 	{
 		if (abs(mouseX - colonies[i].bacX) <= 50 || abs(mouseY - colonies[i].bacY) <= 50)
 			colonies[i].run();
 		else
 			colonies[i].move();
 		colonies[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int bacX, bacY, bacColor;
 	Bacteria(int myX, int myY)
 	{
 		bacX = myX;
 		bacY = myY;
 		bacColor = color((int)(Math.random()*156),(int)(Math.random()*156),(int)(Math.random()*156));
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
 	void run()
 	{
 		if(bacX <= mouseX)
 		{
 			bacX = bacX - (int)(Math.random()*9);
 		}
 		else 
 		{
 			bacX = bacX + (int)(Math.random()*9);	
 		}
 		if(bacY <= mouseY)
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
 		fill(bacColor);
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
 		foodY-=8;
 	}
 	else if (keyCode == DOWN)
 	{
 		foodY+=8;
 	}
 	else if (keyCode == LEFT)
 	{
 		foodX-=8;	
 	}
 	else if ( keyCode == RIGHT)
 	{
 		foodX+=8;
 	}
 }