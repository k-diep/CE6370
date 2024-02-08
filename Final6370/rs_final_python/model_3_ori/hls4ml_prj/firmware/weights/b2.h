//Numpy array shape [10]
//Min -0.218750000000
//Max 0.406250000000
//Number of zeros 0

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
bias2_t b2[10];
#else
bias2_t b2[10] = {0.09375, -0.09375, 0.21875, -0.21875, -0.06250, 0.34375, -0.12500, 0.15625, 0.40625, 0.09375};
#endif

#endif
