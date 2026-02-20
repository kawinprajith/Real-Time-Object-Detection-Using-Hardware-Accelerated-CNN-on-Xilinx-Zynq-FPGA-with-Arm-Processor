#include "conv_w.h"
#include "conv_b.h"

extern "C" {
void cnn_accel(float img[32][32], float out[10])
{
#pragma HLS INTERFACE m_axi port=img offset=slave
#pragma HLS INTERFACE m_axi port=out offset=slave
#pragma HLS INTERFACE s_axilite port=return

    float sum=0;

    for(int i=0;i<32;i++)
        for(int j=0;j<32;j++)
            sum += img[i][j]*0.01;

    for(int k=0;k<10;k++)
        out[k]=sum+k;
}
}
