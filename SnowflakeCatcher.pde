
Snowflake[] snow;
void setup()
{
	background(20,150,255);
  size(800,600);
  snow = new Snowflake[200];
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i] = new Snowflake();
  }
  	//your code here
}
void draw()
{
	
  for(int i = 0; i < snow.length; i++)
  {
  	snow[i].erase();
  	snow[i].lookDown();
  	snow[i].move();
  	snow[i].wrap();
  	snow[i].show();//your code here
	}
}
void mouseDragged()
{
  fill(0);
  ellipse(mouseX, mouseY, 7,7);
}

class Snowflake
{
  boolean isMoving;
  int x, y;//class member variable declarations
  
  Snowflake()
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*80);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);//your code here
  }
  void lookDown()
  {
    if((y >= 0 && y <= 580) && get(x,y + 4) != color(20,150,255))
    {
    	isMoving = false;
    }
    else {
    	isMoving = true;
    }

    //your code here
  }
  void erase()
  {
    fill(20,150,255);
    noStroke();
    ellipse(x, y, 8, 8);//your code here
  }
  void move()
  {
    if(isMoving == true)
    {
    	y++;
    }
    	//your code here
  }
  void wrap()
  {
    if(y >= 600)
    {
    	y = 0;
    	x = (int)(Math.random() * 800);
    }//your code here
  
  }

}
