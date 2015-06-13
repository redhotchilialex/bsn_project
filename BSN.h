#ifndef BSN_H
#define BSN_H

typedef nx_struct my_msg {
	nx_uint16_t type;
} my_msg_t;

#define START 0
#define NO_MOVEMENT 1 
#define MOVEMENT 2
#define CRISIS 3
#define AVG_FACTOR 0.0000007629
#define MTHR 0.5
#define CTHR 2  


enum{
AM_RADIO_BSN_MSG = 6,
};

#endif