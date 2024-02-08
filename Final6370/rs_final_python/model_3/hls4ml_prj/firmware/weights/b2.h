//Numpy array shape [10]
//Min -0.187500000000
//Max 0.656250000000
//Number of zeros 0

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
bias2_t b2[10];
#else
bias2_t b2[10] = {0.43750, -0.18750, 0.56250, 0.21875, 0.65625, 0.46875, 0.21875, -0.03125, 0.25000, 0.59375};
#endif

#endif
