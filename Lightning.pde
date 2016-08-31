

//declare 4 int variables startX, startY, endX and endY. Initialize startX to 0, startY to 150, endX to 0 and endY to 150

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

int r = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255);

int cloudX =10;

void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0,0,0);

}


void draw()
{
		//draws gray clouds across the top	
		while (cloudX < 350)
		{
		
			cloudX = cloudX + 50;

		noStroke();
		fill (169,169,169);
		ellipse(cloudX - 50,10,70,50);

		}


	// randomizes the color of the lightning
	stroke(r,g,b);

	while (endX < 300)
	{
		endX = startX + (int)(Math.random()*9);

		endY = startY + (int)((Math.random()*18)-9);

		//line(startX,startY,endX,endY);
		line(startY,startX,endY,endX);

		startX = endX;
		startY = endY;

	}

}


void mousePressed()
{

	 r = (int)(Math.random()*255);
	 b = (int)(Math.random()*255);
 	 g = (int)(Math.random()*255);

	startX = 0;
 	startY = mouseX;
 	endX = 0;
 	endY = 150;



}

