PFont thirteenPixelFonts;

void setup() {
  size(1261, 91);
  // = createFont("", 20);
  thirteenPixelFonts = createFont("3D-Thirteen-Pixel-Fonts.ttf", 32);
  textFont(thirteenPixelFonts);
  fill(0);
}

void draw() {
  background(255);
  textFont(thirteenPixelFonts);

  
  for (int i = 1; i < 1261; i = i+90) {
    for (int j = 18; j < 91; j = j+18) {
      text("C", i, j);  
    }
  } 
  
    for (int i = 19; i < 1261; i = i+90) {
    for (int j = 18; j < 91; j = j+18) {
      text("Y", i, j);  
    }
  } 
  
    for (int i = 37; i < 1261; i = i+90) {
    for (int j = 18; j < 91; j = j+18) {
      text("B", i, j);  
    }
  } 
  
    for (int i = 55; i < 1261; i = i+90) {
    for (int j = 18; j < 91; j = j+18) {
      text("E", i, j);  
    }
  } 
  
    for (int i = 73; i < 1261; i = i+90) {
    for (int j = 18; j < 91; j = j+18) {
      text("R", i, j);  
    }
  } 

save("cyber_scarf4.tif"); //save a tiff image of output in sketch folder, rename to save multiple
}
