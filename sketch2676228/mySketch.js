/*
It is a 3D shader made for the weekly Creative Coding Challenge
(https://openprocessing.org/curation/78544) on the theme "Pride".

The shader features a kaleidoscopic iterated function system.
I learned how to use it by watching NuSan code it.

https://www.youtube.com/watch?v=3akoijy1ACU

It works well with almost everything that Lennie Simo creates
using only pens and a tabletop. It's music! Try it!

https://www.youtube.com/watch?v=WzYI66yHQO8

Here's another version that would fit right in at a disco:
https://codepen.io/atzedent/full/raVZEay

*/

let theShader, dpr = Math.max(1, 0.5*window.devicePixelRatio), ww = window.innerWidth*dpr, wh = window.innerHeight*dpr;
const canvasStyle = 'width:100%;height:auto;touch-action:none;object-fit:contain;'

function windowResized() {
	ww = window.innerWidth*dpr; wh = window.innerHeight*dpr;
  resizeCanvas(ww, wh);
	const cnvs = document.querySelector('canvas');
	cnvs.style = canvasStyle;
}

function preload(){
	theShader = loadShader('vert.glsl', 'frag.glsl');
}

function setup() {
  pixelDensity(1);
  createCanvas(ww, wh, WEBGL);
	const cnvs = document.querySelector('canvas');
	cnvs.style = canvasStyle;
}

function draw() {
  shader(theShader);
  theShader.setUniform("resolution", [width, height]);
  theShader.setUniform("time", millis() / 1000.0);
  rect(0,0,width,height);
}

// Override to enable webgl2 and support for high resolution and retina displays
p5.RendererGL.prototype._initContext = function() {
	try { this.drawingContext = this.canvas.getContext('webgl2', this._pInst._glAttributes) ||
			this.canvas.getContext('experimental-webgl', this._pInst._glAttributes);
		if (this.drawingContext === null) { throw new Error('Error creating webgl context');
		} else { const gl = this.drawingContext; 
			gl.viewport(0, 0, ww, wh);
			this._viewport = this.drawingContext.getParameter(this.drawingContext.VIEWPORT);
		} } catch (er) { throw er; }
};