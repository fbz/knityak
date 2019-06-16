PFont thirteenPixelFonts;

void setup() {
  size(1300, 103);
  // = createFont("", 20);
  thirteenPixelFonts = createFont("3D-Thirteen-Pixel-Fonts.ttf", 32);
  textFont(thirteenPixelFonts);
  fill(0);
}

void draw() {
  background(255);
  textFont(thirteenPixelFonts);

  
  for (int i = 5; i < 1300; i = i+400) {
      text("CYBER", i, 50);  
  } 
  
    for (int i = 205; i < 1300; i = i+400) {
      text("CYBER", i, 90);  
  } 
  
  for (int i = 105; i < 1300; i = i+200) {
     for (int j = 0; j < 100; j = j+40) {
      text("CYBER", i, j);  
     }
  }

  {
  pushMatrix();
  scale(1, -1);
    for (int i = 105; i < 1300; i = i+200) {
      for (int j = -4; j >-100; j = j-40) {
        text("CYBER", i, j);  
      }
    }
    
    for (int i = 205; i < 1300; i = i+400) {
      text("CYBER", i, -15);  
    } 
    
    for (int i = 5; i < 1300; i = i+400) {
      text("CYBER", i, -55);  
    } 
  popMatrix();
  }

save("text_test2.tif"); //save a tiff image of output in sketch folder, rename to save multiple
}
