//Numpy array shape [10]
//Min 0.000000000000
//Max 0.500000000000
//Number of zeros 1

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
bias2_t b2[10];
#else
bias2_t b2[10] = {0.03125, 0.03125, 0.40625, 0.00000, 0.50000, 0.18750, 0.18750, 0.43750, 0.34375, 0.40625};
#endif

#endif
