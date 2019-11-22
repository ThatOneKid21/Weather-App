//Global Variable
color black=0, white=255;
float x, y, rectWidth, rectHeight;
size(700, 500);
x = width*1/4;
y = height*0;
rectWidth = width*1/2;
rectHeight = height*1/10;

//
String title = "Wahoop!";
PFont titleFont;
println("Start of Console");
//String[] fontList = PFont.list();
//printArray(fontList);
titleFont = createFont("ComicSansMS-Bold", 55);

rect(x, y, rectWidth, rectHeight);
fill(#2C08FF);
textAlign(CENTER, CENTER);
textFont(titleFont, 20);
text(title, x, y, rectWidth, rectHeight);
fill(white);
