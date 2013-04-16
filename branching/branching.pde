/**
 Demonstrates branching through recursion.
 Also shows rudimentary animation and defining custom types.
 */

// The name of our Branch is "tree"
Branch tree;
// These variables determine how branches grow
float startBranchLength = 500;
float minBranchLength = 10;
float childProportion = 0.66;

void setup()
{ // set the window size
  size(800, 600);
  // create a new branch
  tree = new Branch( width/2, height, startBranchLength, PI * 0.2 );
  tree.setGrowthAngle( -PI/2 );
  
  // set drawing properties
  strokeWeight( 1 );
  stroke( 0 );
  smooth();
}

void draw()
{ // start with a white page
  background( 255 );
  // tell our branches to grow
  tree.grow();
  // draw first branch, which will draw all child branches, too
  tree.draw();
}

void mousePressed()
{ // create a new branch
  // angle of branching determined by mouse position
  float growthAngle = map( mouseX, 0, width, PI * 0.01, PI * 0.5 );
  tree = new Branch( width/2, height, startBranchLength, growthAngle );
  tree.setGrowthAngle( -PI/2 );
}

