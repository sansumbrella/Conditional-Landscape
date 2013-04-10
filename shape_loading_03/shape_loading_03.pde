// Shape loading

// Name for the shape we will load
PShape icon;

void setup()
{
  size( 640, 480 );
  smooth();
  icon = loadShape("../../shared_data/Landscape Shape.svg");
}

void draw()
{
  background( 255 );
  // get angle from center of screen to mouse using trigonometry
  float radians = atan2( mouseY - height/2, mouseX - width/2 );
  // center our drawing on the screen
  translate( (width - icon.getWidth())/2, (height - icon.getHeight())/2 );
  // rotate and scale our drawing about its center
  rotateAndScaleAroundCenter( icon, radians, 0.66f );
  // draw our shape
  shape( icon, 0, 0 );
}

void rotateAndScaleAroundCenter( PShape shape, float radians, float scale )
{
  // try changing the order of operations to see how it changes the end result
  translate( shape.getWidth()/2, shape.getHeight()/2 );
  scale( scale );
  rotate( radians );
  translate( -shape.getWidth()/2, -shape.getHeight()/2 );
}


