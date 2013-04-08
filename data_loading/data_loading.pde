int columns = 24;
int rows = 16;
float column_width;
float row_height;
float padding = 6;
color background_color = color( 255 );
DataGrid data;

void setup()
{
  size( 1024, 768 );
  column_width = (width - padding*2) / columns;
  row_height = (height - padding*2) / rows;
  noFill();
  stroke( 0 );
  smooth();
  
  data = new DataGrid("../../shared_data/");
}

void draw()
{
  background( background_color );
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
}

// draw something in cell x, y
// dimensions of cell are stored in w and h
// all drawing starts relative to the cell's top-left corner
void renderCell( int x_index, int y_index, float w, float h )
{
  //  line( w/2, h/2, w, h );
  //  rect( 0, 0, w/2, h/2 );
//  stroke( 255, 127, 0 );
  renderRotation( x_index, y_index, w, h );
  //  stroke( 127, 0, 255 );
//  renderNoiseCell( x_index, y_index, w, h );
//  renderRectangles( x_index, y_index, w, h );
}

void renderRectangles( int x_index, int y_index, float w, float h )
{
  rectMode( CENTER );
  int maxRects = (int)map( x_index, 0, columns, 2, 10 );
  maxRects = max( maxRects, (int)map( y_index, 0, rows, 2, 10 ) );
  
  for ( int i = 0; i < maxRects; ++i )
  {
    float x_size = map( i, 0, maxRects - 1, w * 0.1, w * 0.9 );
    float y_size = map( i, 0, maxRects - 1, h * 0.1, h * 0.9 );
    rect( w / 2, h / 2, x_size, y_size );
  }
  rectMode( CORNER );
}

void renderRotation( int x_index, int y_index, float w, float h )
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

void renderNoiseCell( int x_index, int y_index, float w, float h )
{
  float x = x_index * 0.05 + millis() * 0.001;
  float y = y_index * 0.05 + millis() * 0.0005; 
  float theta = noise( x, y ) * TWO_PI;

  // move to center of cell 
  translate( w/2, h/2 );
  // draw a circle
  ellipse( 0, 0, 4, 4 );
  rotate( theta );
  // and a line
  line( 0, 0, w/2, h/2 );
}

