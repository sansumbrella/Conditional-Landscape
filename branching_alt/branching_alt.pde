// Demonstrates a mode of drawing branches
// more closely related to a basic statement of rules

void setup()
{
  size( 800, 600 );
}

void draw()
{ // start with a white page
  background( 255 );
  // draw one branch up from the bottom of the page
  translate( width/2, height );
  rotate( -PI / 2 );
  float branch_length = height / 2;
  line( 0, 0, branch_length, 0 );
  // make successive branches smaller
  branch_length = branch_length * 0.6;
  // repeatedly do the following (here, 25 times)
  for( int i = 0; i < 25; i++ )
  { // move along the branch and draw another line
    translate( branch_length / 3, 0 );
    float branching_angle = map( mouseX, 0, width, -PI/2, PI/2 );
    rotate( branching_angle );
    line( 0, 0, branch_length, 0 );
    // make successive branches smaller
    branch_length = branch_length * 0.9;
  }
}
