import processing.pdf.*;

// Some interactivity

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
  float mouse_x_modifier = mouseX * 1.0 / width;
  float mouse_y_modifier = mouseY * 1.0 / width;
  float y_adjust = 4 * PI * (y_index + 1) / rows;
  float x_adjust = 4 * PI * (x_index + 1) / columns;
  float theta = x_adjust * mouse_x_modifier + y_adjust * mouse_y_modifier;

  // move to center of cell 
  translate( w/2, h/2 );
  // draw a circle
  ellipse( 0, 0, 4, 4 );
  rotate( theta );
  // and a line
  line( 0, 0, w/2, h/2 );
}

void keyPressed()
{
  if ( key == 's' )
  {
    doRecord = true;
  }
}

