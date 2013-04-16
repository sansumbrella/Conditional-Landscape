Conditional-Landscape
=====================

Processing sketches for a workshop given at Harvard GSD's Landscape Architecture program.
Workshop led by David Wicks, invited by Rosetta Elkin and Jill Desimini.

For more information on Processing, see:
- [Processing.org](http://processing.org)
- [Processing Reference](http://processing.org/reference)
- [Processing Tutorials](http://processing.org/learning/)

Sketch overview:

Branching:
Created during the workshop; annotated after the fact
Branching_alt:
A simpler branching sketch, easy to understand but harder to build upon.

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

All code in this repository is available under the Modified BSD License.
You can do pretty much what you like with it, so long as you don't blame me.

/*
 * Copyright (c) 2013, David Wicks
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or
 * without modification, are permitted provided that the following
 * conditions are met:
 *
 * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
