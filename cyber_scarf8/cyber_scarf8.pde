PFont thirteenPixelFonts; //free from https://dl.1001fonts.com/3d-thirteen-pixel-fonts.zip
                          //save font in sketch folder

void setup() {
  size(1153, 91); //length and width of scarf
  thirteenPixelFonts = createFont("3D-Thirteen-Pixel-Fonts.ttf", 32);
  textFont(thirteenPixelFonts);
  fill(0);
}

void draw() {
  background(255);
  textFont(thirteenPixelFonts);

for (int k = 0; k < 73; k = k+18) {
  //fill(0); //use if you want mirrored and standard text different colors (turn on below too)
  for (int i = 1; i < 800; i = i+180) {
    for (int j = 90; j < 91; j = j+90) {
      text("C", i+k, j-k);  
    }
  } 
  
    for (int i = 19; i < 800; i = i+180) {
    for (int j = 90; j < 91; j = j+90) {
      text("Y", i+k, j-k);  
    }
  } 
  
    for (int i = 37; i < 800; i = i+180) {
    for (int j = 90; j < 91; j = j+90) {
      text("B", i+k, j-k);  
    }
  } 
  
    for (int i = 55; i < 800; i = i+180) {
    for (int j = 90; j < 91; j = j+90) {
      text("E", i+k, j-k);  
    }
  } 
  
    for (int i = 73; i < 800; i = i+180) {
    for (int j = 90; j < 91; j = j+90) {
      text("R", i+k, j-k);  
    }
  } 
} 


{ pushMatrix();
  scale(1, -1); //mirror text
    
  for (int k = 0; k < 73; k = k+18) {
    //fill(0, 102, 153); //use if you want mirrored and standard text different colors (turn on above too)
    for (int i = 271; i < 1261; i = i+180) {
      for (int j = -74; j < 1; j = j+90) {
        text("C", i+k, j+k);  
      }
    } 
  
    for (int i = 289; i < 1261; i = i+180) {
      for (int j = -74; j < 1; j = j+90) {
        text("Y", i+k, j+k);  
      }
    } 
  
    for (int i = 307; i < 1261; i = i+180) {
      for (int j = -74; j < 1; j = j+90) {
        text("B", i+k, j+k);  
      }
    } 
  
    for (int i = 325; i < 1261; i = i+180) {
      for (int j = -74; j < 1; j = j+90) {
        text("E", i+k, j+k);  
      }
    } 
  
    for (int i = 343; i < 1261; i = i+180) {
      for (int j = -74; j < 1; j = j+90) {
        text("R", i+k, j+k);  
      }
    } 
    
  }  
    
  popMatrix();
}

save("cyber_scarf8.tif"); //save a tiff image of output in sketch folder, rename to save multiple
}