/*
背景效果 - 3D万花筒着色器
基于 Matthias Hurrle (@atzedent) 的创意编码作品
*/

let theShader;
let dpr = Math.max(1, 0.5 * window.devicePixelRatio);
let ww = window.innerWidth * dpr;
let wh = window.innerHeight * dpr;
const canvasStyle = 'width:100%;height:100%;position:fixed;top:0;left:0;z-index:-1;touch-action:none;object-fit:cover;';

function windowResized() {
    ww = window.innerWidth * dpr;
    wh = window.innerHeight * dpr;
    resizeCanvas(ww, wh);
    const cnvs = document.querySelector('#background-canvas');
    if (cnvs) {
        cnvs.style = canvasStyle;
    }
}

function preload() {
    theShader = loadShader('assets/background-vert.glsl', 'assets/background-frag.glsl');
}

function setup() {
    pixelDensity(1);
    createCanvas(ww, wh, WEBGL);
    const cnvs = document.querySelector('canvas');
    cnvs.id = 'background-canvas';
    cnvs.style = canvasStyle;
}

function draw() {
    shader(theShader);
    theShader.setUniform("resolution", [width, height]);
    theShader.setUniform("time", millis() / 1000.0);
    rect(0, 0, width, height);
}

// 重写以启用webgl2和支持高分辨率和视网膜显示
p5.RendererGL.prototype._initContext = function() {
    try {
        this.drawingContext = this.canvas.getContext('webgl2', this._pInst._glAttributes) ||
            this.canvas.getContext('experimental-webgl', this._pInst._glAttributes);
        if (this.drawingContext === null) {
            throw new Error('Error creating webgl context');
        } else {
            const gl = this.drawingContext;
            gl.viewport(0, 0, ww, wh);
            this._viewport = this.drawingContext.getParameter(this.drawingContext.VIEWPORT);
        }
    } catch (er) {
        throw er;
    }
}; 