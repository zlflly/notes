#version 300 es
/*********
* made by Matthias Hurrle (@atzedent)
* Tip: For syntax highlighting, paste the code here:
* https://shadered.org/app?fork=4Y3P9GQID0
*/
precision highp float;
out vec4 O;
uniform float time;
uniform vec2 resolution;
#define FC gl_FragCoord.xy
#define R resolution
#define T time
#define N normalize
#define S smoothstep
#define MN min(R.x,R.y)
#define MAXD 6.
#define CT curve(T,.4)
#define rot(a) mat2(cos((a)-vec4(0,11,33,0)))
#define hue(a) (.5+.5*sin(3.14*(a)+vec3(1,2,3)))
vec3 rnd(vec3 p) {
  return fract(
  	sin(
  		p.xyz*724.524+
  		p.yzx*534.824+
  		p.zxy*381.254
  	)*vec3(413.644,388.521,924.532)
  );
}
float rnd(float a) {
	vec2 p=fract(a*vec2(12.9898,78.233));
	p+=dot(p,p+34.56);
	return fract(p.x*p.y);
}
float curve(float t, float e) {
	t/=e;
	return mix(
		rnd(floor(t)),
		rnd(floor(t)+1.),
		pow(S(.0,1.,fract(t)),10.)
	);
}
vec2 smin(vec2 a, vec2 b, float k) {
	vec2 h=clamp(.5+.5*(b-a)/k,.0,1.);
	return mix(b,a,h)-k*h*(1.-h);
}
vec3 kifs(vec3 p) {
	float e=1., f=sin(3.14*mod(T*.2,5.))*.5+.5, t=CT;
	for (float i=.0; i<5.; i++) {
		p.yz*=rot(T*.2+t);
		p.xz*=rot(T*1.4);
		p+=vec3(.12*e,.04,.0413)+.06*dot(abs(fract(p*4.*f)-.5)-.25,vec3(1));
		p.yz=smin(p.yz,-p.yz,.2*e);
		p=p.yzx;
		e*=.5;
	}
	return p;
}
float box(vec3 p, vec3 s) {
	p=abs(p)-s;
	return length(max(p,.0))+min(.0,max(max(p.x,p.y),p.z));
}
float map(vec3 p) {
	p=kifs(p);
	return box(p+vec3(-.25,1,.5),vec3(1));
}
vec3 norm(vec3 p) {
	float h=1e-3; vec2 k=vec2(-1,1);
	return N(
		k.xyy*map(p+k.xyy*h)+
		k.yxy*map(p+k.yxy*h)+
		k.yyx*map(p+k.yyx*h)+
		k.xxx*map(p+k.xxx*h)
	);
}
float march(inout vec3 p, vec3 rd) {
	float dd=.0; vec2 uv=(FC-.5*R)/MN;
	for (float i=.0; i<40.; i++) {
		float d=map(p);
		if (abs(d)<1e-3 || dd>MAXD) break;
    vec3 dof=rnd(vec3(uv+7.+i,fract(T)+i*.2))*.5;
    dof.z=.0;
    vec3 r=N(vec3(uv,1.+sin(T*.25)*.5));
    r-=dof*clamp(dot(uv,uv*.5),.0,1.);
    rd=r;
		p+=rd*d;
		dd+=d;
	}
	return dd;
}
float poly(vec2 p, float n) {
	float
	a=atan(p.x,p.y),
	b=6.28318/n;
	return cos(floor(.5+a/b)*b-a)*length(p);
}
vec3 pattern(vec2 uv, float t) {
	vec2 p=uv*.05;
	vec3 col=vec3(0);
	for (float i=.0; i<5.; i++) {
		p=fract(p*2.05)-.5;
		float d=poly(p,8.)/(.25+dot(p,p));
		d=sin(d*9.+t+i)*.25;
		d=abs(d);
		col+=.02/d*hue(length(uv)+i*.125-t*.125);
	}
	return col;
}
vec3 render(inout vec3 p, vec3 rd) {
	vec3 col=vec3(0), q=p;
	float d=march(p,rd);
	if (d<MAXD) {
		vec3 n=norm(p), lp=vec3(1,2,-3), l=N(lp-p);
		float dif=clamp(dot(l,n),.0,1.), fres=pow(clamp(1.+dot(rd,n),.0,1.),5.),
		spec=pow(clamp(dot(reflect(rd,n),l),.0,1.),8.);
		col+=(.2+dif)*hue(.3+dot(q,q*.12)-T);
		col=mix(col,vec3(0),fres),
		col+=.2*spec+.4*hue(.2+sqrt(spec)-T);
		col+=fres;
		col=tanh(col);
		col=sqrt(col);
	} else {
		vec2 uv=FC/R*2.-1.;
		uv*=.95;
		uv*=uv*uv*uv*uv;
		float v=pow(dot(uv,uv),.8);
		col=pattern((FC-.5*R)/MN,T-CT);
		col=vec3(dot(mix(col,vec3(1),v),vec3(.21,.71,.07)));
		col=max(col,.95);
	}
	return col;
}
void main() {
	vec2 uv=(FC-.5*R)/MN;
	vec3 col=vec3(0),
	p=vec3(0,0,-6),
	rd=N(vec3(uv,1));
	col+=render(p,rd);
	col+=1.-min((time-.2)*.8,1.);
	O=vec4(col,1);
} 