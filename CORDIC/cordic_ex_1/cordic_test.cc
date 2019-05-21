#include<iostream>
#include<vector>
#include "cordic.h"

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main() {
  cout << "Hello" << endl;
  THETA_TYPE theta = 1.047;
  COS_SIN_TYPE s;
  COS_SIN_TYPE c;
  cordic(theta,s,c);
}
