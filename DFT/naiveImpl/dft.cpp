#include<math.h>
typedef float IN_TYPE;
typedef float TEMP_TYPE;
#define N 256 //Number of samples 


void dft(IN_TYPE sample_real[N], IN_TYPE sample_imag[N]){
  TEMP_TYPE temp_real[N]; //temp variable to hold freq domain results
  TEMP_TYPE temp_imag[N];
  TEMP_TYPE w; 
  TEMP_TYPE c,s;
  unsigned int i,j;

  //calculate frequency domain sample iteratively
  for(i=0;i<N;i+=1){
    temp_real[i] = 0; //initialize to 0
    temp_imag[i] = 0;
    w = (2*3.141592653589/N)*(TEMP_TYPE)i; //2*pi*i/N
    for(j=0;j<N;j+=1){
      c = cos(j*w); //from math.h 
      s = sin(j*w);
      temp_real[i] += (sample_real[j]*c - sample_imag[j]*s);
      temp_imag[i] -= (sample_real[j]*s + sample_imag[j]*c);
    }
  }

  //inplace DFT write back to input arrays
  for(i=0;i<N;i+=1){
    sample_real[i] = temp_real[i];
    sample_imag[i] = temp_imag[i];
  }
  
}
