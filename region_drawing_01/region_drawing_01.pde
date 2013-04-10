import processing.pdf.*;

// Perlin noise wavy sample

int columns = 40;
int rows = 30;
float column_width;
float row_height;
float padding = 6;

// set whether we want to record the screen
Boolean doRecord = false;

void setup()
{
  size( 1024, 768 );
  column_width = (width - padding*2) / columns;
  row_height = (height - padding*2) / rows;
  stroke( 0 );
  smooth();
}

void draw()
{
  if ( doRecord )
  {
    beginRecord( PDF, "output/lines.pdf" );
  }
  // change the way we define color in this sketch
  // use Hue, Saturation, and Brightness which range from 0.0 to 1.0
  colorMode( HSB, 1.0 );
  background( 1.0 );
  for ( int x = 0; x < columns; ++x )
  {
    for ( int y = 0; y < rows; ++y )
    {
      pushMatrix();
      float x_coord = padding + x * column_width;
      float y_coord = padding + y * row_height;
      translate( x_coord, y_coord );
      renderCell( x, y, column_width, row_height );
      popMatrix();
    }
  }

  if ( doRecord )
  {
    endRecord();
    // stop recording drawing
    doRecord = false;
  }
}

// draw something in cell x, y
// dimensions of cell are stored in w and h
// all drawing starts relative to the cell's top-left corner
void renderCell( int x_index, int y_index, float w, float h )
{
  float x = x_index * 0.05 + millis() * 0.001;
  float y = y_index * 0.05 + millis() * 0.0005; 
  float theta = noise( x, y ) * TWO_PI;
  float brightness = map( noise( x, y ), 0.0, 1.0, 0.0, 0.9 );
  stroke( brightness ); 
  // move to center of cell 
  translate( w/2, h/2 );
  rotate( theta );
  // draw a line
  line( 0, 0, w/2, h/2 );
  // and a circle
  ellipse( 0, 0, 4, 4 );
}

void keyPressed()
{
  if ( key == 's' )
  {
    doRecord = true;
  }
}

