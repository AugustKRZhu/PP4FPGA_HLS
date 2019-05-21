#define SIZE 8
typedef int BaseType;

void matrix_vector(BaseType M[SIZE][SIZE], BaseType V_In[SIZE], BaseType V_Out[SIZE]){
#pragma HLS array_partition variable=M dim=2 complete //partition based only on the second variable - 8 registers
#pragma HLS array_partition variable=V_In complete //partition whole array - 8 registers
  BaseType i,j;
  data_loop:
  for(i=0;i<SIZE;i++){
#pragma HLS pipeline II=1
    BaseType sum=0;
    dot_product_loop:
    for(j=0;j<SIZE;j++){
#pragma HLS unroll
      sum += V_In[j]*M[i][j];
    }
    V_Out[i] = sum;
	//V_Out[i] = V_In[0]*M[i][0] + V_In[1]*M[i][1] +V_In[2]*M[i][2] +V_In[3]*M[i][3] +V_In[4]*M[i][4] +V_In[5]*M[i][5] +V_In[6]*M[i][6] +V_In[7]*M[i][7];
  }
}
