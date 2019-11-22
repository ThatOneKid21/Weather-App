// Global Variables

void setup() {
  size(500, 600);
  buildingURL();
  APICall();
  unwrapToVariables();
  size(500, 600);
}

void draw() {
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall); //Verify API Call is changing with mousePressed()
}

void keyPressed() {
}
