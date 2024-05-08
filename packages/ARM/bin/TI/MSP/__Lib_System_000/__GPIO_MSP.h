#pragma setintsize mE 

typedef struct {
  unsigned int *port;
  unsigned int  pin_mask;
  unsigned int  config;
  char          pin_code;
} PinsConfig;

typedef struct {
  PinsConfig    pins[18];
  char          numOfCfg;
} Module_Struct;