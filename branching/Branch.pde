/**
 Our concept of a Branch
 Keeps track of where and how the branch should grow,
 it's maximum and current length, and any branch off of itself.
 
 The Branch provides methods (grow() and draw()) that let you
 manipulate and display the Branch in meaningful ways.
 
 Exercise for reader: add multiple branches off of a single base
 To get started, see either Array or ArrayList in the reference:
 ArrayList http://processing.org/reference/ArrayList.html
 Array http://processing.org/reference/Array.html
 */
class Branch
{
  // x,y pixel position of base of branch
  float startX, startY;
  // how long the branch will grow to be
  float fullLength;
  // current length of branch
  float currentLength;
  // angle at which branch grows
  float growthAngle;
  // child branch, if any
  Branch child;

  // The Constructor lets us create new Branches 
  Branch( float sx, float sy, float length, float angle )
  { // assign properties based on arguments provided
    startX = sx;
    startY = sy;
    fullLength = length;
    currentLength = 0;
    growthAngle = angle;

    if ( random(1.0) < 0.5 )
    {
      growthAngle *= -1;
    }

    if ( fullLength * childProportion > minBranchLength )
    {
      child = new Branch( fullLength * 0.33, 0, fullLength * childProportion, growthAngle );
    }
  }

  // extend length of branch slightly; stop when fullLength is reached
  void grow()
  {
    // increase current length so that it gets closer to fullLength
    currentLength += (fullLength - currentLength) * 0.06;
    if ( child != null && currentLength > child.startX )
    { // if we have a child and have grown past it's starting point
      child.grow();
    }
  }

  // draw the branch to screen
  void draw()
  { // if we have any length
    if ( currentLength != 0 )
    { // move to start position and draw our current length
      translate( startX, startY );
      rotate( growthAngle );
      line( 0, 0, currentLength, 0 );
      if ( child != null )
      { // if we have a child branch, draw child
        child.draw();
      }
    }
  }
  
  // change the growth angle of a branch
  // we use this to make sure the base Branch always points up 
  void setGrowthAngle( float radians )
  {
    growthAngle = radians;
  }
}

