

//declare 4 int variables startX, startY, endX and endY. Initialize startX to 0, startY to 150, endX to 0 and endY to 150

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

int r = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255);

int cloudX =10;

int x = 100;
int y = 0;



void setup()
{
  size(300,300);
  strokeWeight(1);
}


void draw()

{

	 background(0,0,0);
 	 runningPerson();

	// randomizes the color of the lightning
	stroke(r,g,b);


	while (endX < 300)
	{
		endX = startX + (int)(Math.random()*9);

		endY = startY + (int)((Math.random()*18)-9);

		//line(startX,startY,endX,endY);
		//draws the lightning vertically 
		line(startY,startX,endY,endX);

		startX = endX;
		startY = endY;

	}
	
}





void runningPerson()
{
	//arms
	strokeWeight(3);
	stroke(0,255,50);
	line(37+y, 57+200, 60+y, 45+200);
	line(37-16+y, 57+200, 5+y , 45+200);
		
	stroke(0,0,0);
	strokeWeight(1);
	//body
	fill(0,255,50);
	rect(20+y,40+200,20,40);

	//head
	fill(255,224,189);
	ellipse(30+y,40+200,30,30);

	//facial expressions
	stroke(0,0,0);
	fill(250,250,250);
	ellipse(36+y, 35+200, 9,9);
	ellipse(23+y, 35+200, 9,9);


	fill(250,0,0);
	ellipse(29+y, 46+200, 10, 9);



// when person gets off the screen, will come back 
		y = y + 8;

	if (y < 20)
	{
		y = y + 8;
	}
	else if (y > 250)
	{
		y = 250 - y ;


	}

}



void mousePressed()
{
	//when clicked, random color for lightning
	 r = (int)(Math.random()*255);
	 b = (int)(Math.random()*255);
 	 g = (int)(Math.random()*255);

	startX = 0;
 	startY = mouseX;
 	endX = 0;
 	endY = 150;

}



















//I think if I want a while loop, i dont know if i can have a background =3=

// void clouds()
// {
// 		//draws gray clouds across the top	
// 		while (cloudX < 350)
// 		{
		
// 			cloudX = cloudX + 50;

// 		noStroke();
// 		fill (169,169,169);
// 		ellipse(cloudX - 50,10,70,50);

// 		}

// }






	//y= 		
		//y = y - 10;


	// y= y + 10;

	// 	if (y > 200)
	// 	{
	// 		y = y - 10;
	// 	}
		
	// else if (y < 10)
	// 	{
	// 		y= y + 10;	
	// 	}
