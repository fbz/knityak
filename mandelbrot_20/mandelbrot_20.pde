// KnitYak Mandelbrot set scarf selector and zoom tool v0.1: pixel native resolution
// inspired by https://processing.org/examples/mandelbrot.html and coded here by fbz and KnitYak
// provided under GNU GPLv3 - https://www.gnu.org/licenses/gpl-3.0.txt
// this is the specific code for scarf "mandelbrot20: dragon's breath" https://knityak.com
// type this code into Processing, a free coding environment: https://processing.org/download/
// would you like a digital copy of this code? email knityaks@gmail.com

// This the x-axis offset of the blue selector box
int box_xoffset = 510;

// Dimensions of your screen -- the area to select from with the blue selector box
size(1200, 1200);

// Dimensions of your knit item
int scarf_width  = 98, 
  scarf_height = 1200;
color[] scarf_pixels = new color[scarf_width*scarf_height];

// Set this to 1 to mark the part to be cropped later
int draw_box = 1;

// Processing config
noLoop();
background(255);
loadPixels();

// Do some mathy-math! Establish a range of values on the complex plane

// Use this to zoom in. 
float w = 1.0/440.0; //z-axis zoom. try changing the 440.0 value up or down to zoom in or out.
float h = w; // leave this for now

// Use this to move around the mandelbrot rendering
float xmin = (-w/2.0); // initial value 2.0
float ymin = (-h/2.0); // initial value 2.0
xmin -=0.21212;  // x-axis, start with 1.0, modified here to move along x-axis
ymin -=0.68814; // y-axis,  start with 0.0, modified here to move along y-axis

// Maximum number of iterations for each point on the complex plane: more or less wispy/detailed
int maxiterations = 109; // lower value is less iterations, higher value is more iterations

// x goes from xmin to xmax
float xmax = xmin + w;
// y goes from ymin to ymax
float ymax = ymin + h;

// Calculate amount to increment x,y for each pixel
float dx = (xmax - xmin) / (width);
float dy = (ymax - ymin) / (height);

// Start y
float y = ymin;
for (int j = 0; j < height; j++) {
  // Start x
  float x = xmin;
  for (int i = 0; i < width; i++) {

    // Now we test, as we iterate z = z^2 + cm does z tend towards infinity?
    float a = x;
    float b = y;
    int n = 0;
    while (n < maxiterations) {
      float aa = a * a;
      float bb = b * b;
      float twoab = 2.0 * a * b;
      a = aa - bb + x;
      b = twoab + y;
      // Infinity in our finite world is simple, let's just call it 4.0
      if (dist(aa, bb, 0, 0) > 4.0) {
        break;
      }
      n++;
    }

    // We color each pixel based on how long it takes to get to infinity
    // If we never get there, let's pick the color black
    if (n == maxiterations) {
      pixels[i+j*width] = color(0); // black background
    } else {
      // you can change colors here if you want
      // float norm = map(n, 0, maxiterations, 0, 1);
      // pixels[i+j*canvas_width] = color(map(sqrt(norm), 0, 1, 0, 255)); //fancier color option
      pixels[i+j*width] = color(map(1, 0, 1, 0, 255)); //simple white pixels in foreground
    }
    x += dx;
  }
  y += dy;
}

// Crop scarf from screen
for (int xi=0; xi<scarf_width; xi++)
{
  for (int yi=0; yi<scarf_height; yi++)
  {
    scarf_pixels[(yi*scarf_width)+xi] = pixels[(yi*(width))+xi+box_xoffset];
  }
}

// Generate a PPM image
byte header[] = ("P6\n98 1200\n255\n").getBytes(); //scarf dimensions hardcoded, change if needed
byte data[];
data = new byte[scarf_width*scarf_height*3];
for (int i=0; i<(scarf_width*scarf_height); i++)
{
  if (scarf_pixels[i] == color(0))
  {
    data[(3*i)] = 0x0;
    data[(3*i)+1] = 0x0;
    data[(3*i)+2] = 0x0;
  } else {
    data[(3*i)] = (byte)0xff;
    data[(3*i)+1] = (byte)0xff;
    data[(3*i)+2] = (byte)0xff;
  }
}
byte[] outp = new byte[header.length + data.length];
System.arraycopy(header, 0, outp, 0, header.length);
System.arraycopy(data, 0, outp, header.length, data.length);
saveBytes("mandelbrot_20.ppm", outp); // rename this file to save multiple images to sketch

// Draw the blue selector box
if (draw_box!=0)
{
  for (int i=0; i<height; i++)
  {
    pixels[(i*width)+box_xoffset] = color(0, 0, 255);
    pixels[(i*width)+box_xoffset+98] = color(0, 0, 255);
  }
}

// Render to screen
updatePixels();