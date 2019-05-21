#include "cordic.h"
#include<iostream>

//theta is angle to be rotated, s and c are final rotation angles
void cordic(THETA_TYPE theta, COS_SIN_TYPE &s, COS_SIN_TYPE &c){
  COS_SIN_TYPE current_cos = 0.60735;
  COS_SIN_TYPE current_sin = 0.0;

  COS_SIN_TYPE factor = 1.0;
  for(int j=0; j<NUM_ITERATIONS;j++){
    int sigma = (theta < 0) ? -1:1;

    COS_SIN_TYPE temp_cos = current_cos;
    
    //Multiply previous iteration by -2^j
    current_cos = current_cos - (sigma * factor * current_sin);
    current_sin = (sigma * factor * temp_cos) + current_sin;
    //calculate new angle
    theta = theta - sigma * cordic_phase[j];
    //calculate next factor
    factor = factor/2;
    std::cout << j << ": " << theta << " " << cordic_phase[j] <<  std::endl; 
  }
  s = current_sin;
  c = current_cos;
  std::cout << current_cos << " " << current_sin << std::endl; 
}
