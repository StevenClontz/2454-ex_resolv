import solids;
size(10cm);
      
currentprojection=orthographic(2,2,1);
limits((-1.5,-1.5,-1),(1.5,1.5,1));
      
currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparent background
// currentlight.background=black+opacity(0);

surface elipsoide = scale(1,1,1/2)*surface(unitsphere);
surface prllot = scale (2*sqrt(3)/3,2*sqrt(3)/3,sqrt(3)/3)*shift(-1/2,-1/2,-1/2)*surface(unitcube);
surface prll1 = scale (2*3/5*cos(pi/6),2*3/5*sin(pi/6),4/5)*shift(-1/2,-1/2,-1/2)*surface(unitcube);
surface prll2 = scale (2*sqrt(21/25)*cos(pi/3),2*sqrt(21/25)*sin(pi/3),4/10)*shift(-1/2,-1/2,-1/2)*surface(unitcube);

draw(elipsoide,lightblue+opacity(.4));
draw(prll1,lightgreen);
draw(prll2,lightred);
draw(prllot,orange);


dot((sqrt(3)/3,sqrt(3)/3,sqrt(3)/6));
dot((sqrt(3)/3,-sqrt(3)/3,sqrt(3)/6));
dot((-sqrt(3)/3,sqrt(3)/3,sqrt(3)/6));
dot((-sqrt(3)/3,-sqrt(3)/3,sqrt(3)/6));
dot((sqrt(3)/3,sqrt(3)/3,-sqrt(3)/6));
dot((sqrt(3)/3,-sqrt(3)/3,-sqrt(3)/6));
dot((-sqrt(3)/3,sqrt(3)/3,-sqrt(3)/6));
dot((-sqrt(3)/3,-sqrt(3)/3,-sqrt(3)/6));

dot((3/5*cos(pi/6),3/5*sin(pi/6),2/5));
dot((3/5*cos(pi/6),-3/5*sin(pi/6),2/5));
dot((-3/5*cos(pi/6),3/5*sin(pi/6),2/5));
dot((-3/5*cos(pi/6),-3/5*sin(pi/6),2/5));
dot((3/5*cos(pi/6),3/5*sin(pi/6),-2/5));
dot((3/5*cos(pi/6),-3/5*sin(pi/6),-2/5));
dot((-3/5*cos(pi/6),3/5*sin(pi/6),-2/5));
dot((-3/5*cos(pi/6),-3/5*sin(pi/6),-2/5));

dot((sqrt(21/25)*cos(pi/3),sqrt(21/25)*sin(pi/3),1/5));
dot((sqrt(21/25)*cos(pi/3),-sqrt(21/25)*sin(pi/3),1/5));
dot((-sqrt(21/25)*cos(pi/3),sqrt(21/25)*sin(pi/3),1/5));
dot((-sqrt(21/25)*cos(pi/3),-sqrt(21/25)*sin(pi/3),1/5));
dot((sqrt(21/25)*cos(pi/3),sqrt(21/25)*sin(pi/3),-1/5));
dot((sqrt(21/25)*cos(pi/3),-sqrt(21/25)*sin(pi/3),-1/5));
dot((-sqrt(21/25)*cos(pi/3),sqrt(21/25)*sin(pi/3),-1/5));
dot((-sqrt(21/25)*cos(pi/3),-sqrt(21/25)*sin(pi/3),-1/5));

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
