// creating variables
// Initialising variables
float angle = 0;  
int w = 24;       
float ma;         
float maxD;       

void setup() {
  size(600, 600, P3D);
  ma = atan(cos(PI));
  maxD = dist(0, 0, 200, 200);
  
}

void draw() {
  background(100);
  ortho(-400, 400, 400, -400, 0, 1000); // creating orthogonal perspective
  rotateX(-ma); // rotates x-axis by -ma 
  rotateY(-QUARTER_PI); // rotates y-axis by (-1/4)PI
  
  // making a loop to draw boxes on z axis
  for (float z = 0; z < height; z += w) {
    // making a loop to draw boxes on z axis
    for (float x = 0; x < width; x += w) {
      pushMatrix(); 
      float d = dist(x, z, width / 2, height / 2);
      float offset = map(d, 0, maxD, -PI, PI); // creating offset for visuallisation and 
      float a = angle + offset;
      float h = floor(map(sin(a), -1, 1, 100, 300)); // creating a variable and calculating height of boxes based on sin angle
                                                     // using map function to remap numbers from one range to another
                                                     
      // translating to make visuallisation in the middle     
      translate(x - width + 410, height / PI, z - height );
      
      fill(50);
      box(w, h, w); // creating a box by w by h by w
      
      //rect(x - width / 2 + w / 2, 0, w - 2, h);
      popMatrix();
    }
  }

  angle -= 0.1;
}
