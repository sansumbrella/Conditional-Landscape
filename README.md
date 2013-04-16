Conditional-Landscape
=====================

Processing sketches for landscape architecture workshop.

Sketch overview:

Data Loading sketches:
01 - loads data from CSV and gets information out of it to render on a grid
02 - adds PDF output of finished drawing
03 - adds color (grayscale)
04 - changes representation to lines

Shape Loading sketches:
01 - demonstrates how to load an SVG drawn in e.g. Illustrator
02 - centers the shape in the window
03 - adds rotation and interactivity to the shape

Region Drawing sketches:
More ideas for drawing in a grid, without using a data file

Fake Data Maker:
makes fake data for the data loading sketches (since you need something to test with)

Workshop Outline
================
I. Conditional Design (see [Conditional Design](http://conditionaldesign.org))
	- Tangent Circles
		Setup:
		Draw two circles tangent to each other
		Repeat:
		Draw a circle tangent to two other circles
	- Substrate Lines (see [Jared Tarbell](http://www.complexification.net/gallery/machines/substrate/index.php))
		Setup:
		Draw a straight line across the page
		Repeat:
		Draw a straight line off of the previous line, stop when it touches the edge of the page or another line
	- Knots (requires at least 3 people)
		Setup:
		1. The first player draws a line
		2. Each other player draws a line that loops over and under the previous line
		Repeat:
		1. Elongate your line on both sides by looping it over and under a line of another color.
		2. You may not loop your own line or the line you looped in your last turn.
		3. If you have no options left on one of the sides, that side is dead.
		4. When both sides are dead, you may place a new line.
II. Transforming Existing Drawings to Processes
- Pin up prior landscape documentation (done already)
- Select a few from each group, talk through converting to a process
- Perform that process by hand individually/as groups
- Rewrite the rules and follow a second time
III. Brief Introduction to Processing
- Example sketches
	- loading and displaying SVG shapes
	- drawing content within a matrix
	- referencing a matrix of data
	- exporting vector format for further work
- Transform one process from part II into a Processing sketch
	- work through as a group
IV. Individual time to work (we ran out of time at this point, and just took questions for remaining 10 minutes)
	- continue developing rules for drawings, perform those rules
	- translate rules into code, let computer perform rules
