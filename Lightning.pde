void setup()
{
  size(800,800);
  background(0,150,150);
  strokeWeight(4);
}

int startX = 400;
int startY = 0;
int endX = 400;
int endY = 0;

void draw()
{	
	building();
	stroke(255,177,5);
	endX = startX + ((int)(Math.random()*18)-9);
	endY = startY + ((int)(Math.random()*9));
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	if (endY > 330)
	{
		endX = 400;
		endY = 350;
		line(startX,startY,endX,endY);
		noLoop();
		//moreLightning();
	}
	// to make light stay in middle
	// set a line like x = 400
	//then everytime light moves to far make it add or subract
			
}	

void building()
{	
	stroke(0);
	strokeWeight(2);
	line(400,500,400,350);
	triangle(395, 500, 400, 400, 405, 500);
	beginShape();
	vertex(370,800);
	vertex(395,500);
	vertex(405,500);
	vertex(425,800);
	endShape(CLOSE);
	
}
/*void moreLightning()
{
	stroke(255,177,5);
	endX = startX + ((int)(Math.random()*9));
	endY = startY + (((int)(Math.random()*18)-9));
	line(startX,startY,endX,endY);
	
}*/

