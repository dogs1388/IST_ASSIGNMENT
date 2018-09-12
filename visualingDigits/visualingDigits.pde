// creating variables
String numberE; 
int[] digits;    
int index = 0;   

// setup function which renders once
void setup() {
  size(420,420); // creating a window by 420 by 420 pixels
  numberE = loadStrings("e.txt")[0]; // getting data and make it a variable
  println(numberE.length()); // printing length of digits
  String[] sdigits = numberE.split(""); // spliting the data
  //println(sdigits.length);
  digits = int(sdigits); // converting from string to int 
  //printArray(digits);
  background(0); // creating background and set it to color 0 (black) in greyscale
  stroke(255); // creating stroke of ellipse and color of it is 255 (white)
  noFill(); // no fill in ellipse
  translate(width/2, height/2); // translating point of origin (0,0) to the middle for ellipse
  ellipse(0,0,400,400); // creating ellipse in coordinates x,y (0,0) and size 400 by 400 pixels
}

// draw function being called every tick
void draw() {
  //background(0);
  translate(width/2, height/2); // translating point of origin (0,0) to the middle
  int digit = digits[index]; // creating variable to get the digit from list
  int nextDigit = digits[index+1]; // creating a varible to get the next digit from list
  index++; // getting the next digit
  
  float diff = PI/20; // creating diff variable for difference in lines when they being graphed
  // Mathematical 
  float a1 = map(digit,0,10,0,TWO_PI) + random(-diff/2, diff/2); // getting angle 1
  float a2 = map(nextDigit,0,10,0,TWO_PI) + random(-diff/2, diff/2); // 
  
  float x1 = 200 * cos(a1);  //
  float y1 = 200 * sin(a1);  //
                               // Getting coordinates to draw the lines
  float x2 = 200 * cos(a2);  //
  float y2 = 200 * sin(a2);  //
  
  stroke(255,20); // setting stoke for line color 255 (white) and alpha 20
  line(x1,y1,x2,y2); // drawing a line
  
  
  //noStroke();
  //ellipseMode(CENTER);
  //fill(0);
  //ellipse(0,0, 60,60);
  
}

/*
String numberE;
int[] digits;
int[] counts = new int[10];
int index = 0;

void setup() {
  size(400,400);
  numberE = loadStrings("e.txt")[0];
  println(numberE.length());
  String[] sdigits = numberE.split("");
  //println(sdigits.length);
  digits = int(sdigits);
  //printArray(digits);
}


void draw() {
  int currentDigit = digits[index];
  index++;
  counts[currentDigit]++;
  
  float w = width / counts.length;
  for (int i = 0; i < counts.length; i++){
    float x = i * w + w/2;
    float y = height/2;
    float d = counts[i];
    ellipse(x,y,d,d);
    
  }
}
*/
