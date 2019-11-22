// Open Weather Map App
// Global Variables

void setup() {
  buildingURL();
  APICall();
  unwrapToVariables();
  size(500, 600); //Add Screen Size Checker
  // Add fullScreen() option, with Display Size Checker
  GUI_Setup();
  
  println("Start of Console");
  //textSetup();
  
  textDraw(title, titleFont, height, #2C08FF, CENTER, CENTER, width*1/4, height*0, titleWidth, titleHeight); //Title
  
}

void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
  }

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
}

void keyPressed() {}
