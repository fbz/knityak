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

for (int k = 0; k < 73; k = k+18) {
  
  for (int i = 1; i < 1261; i = i+90) {
    for (int j = 90; j < 91; j = j+90) {
      text("C", i+k, j-k);  
    }
  } 
  
    for (int i = 19; i < 1261; i = i+90) {
    for (int j = 90; j < 91; j = j+90) {
      text("Y", i+k, j-k);  
    }
  } 
  
    for (int i = 37; i < 1261; i = i+90) {
    for (int j = 90; j < 91; j = j+90) {
      text("B", i+k, j-k);  
    }
  } 
  
    for (int i = 55; i < 1261; i = i+90) {
    for (int j = 90; j < 91; j = j+90) {
      text("E", i+k, j-k);  
    }
  } 
  
    for (int i = 73; i < 1261; i = i+90) {
    for (int j = 90; j < 91; j = j+90) {
      text("R", i+k, j-k);  
    }
  } 
} 
  
  

/*

  {
  pushMatrix();
  scale(1, -1);
    for (int i = 105; i < 1300; i = i+200) {
      for (int j = -4; j >-100; j = j-40) {
        text("CYBER", i, j);  
      }
    }
    
    for (int i = 205; i < 1300; i = i+400) {
      text("CYBER", i, -14);  
    } 
    
    for (int i = 5; i < 1300; i = i+400) {
      for (int j = -14; j > -80; j = j-40) {
      text("CYBER", i, j); 
      }
    } 
  popMatrix();
  }
*/
save("cyber_scarf6.tif"); //save a tiff image of output in sketch folder, rename to save multiple
}