#pragma setintsize mE 

typedef struct {
  unsigned long *port;
  char          pin_mask;
  unsigned int  config;
  char          pin_code;
} PinsConfig;

typedef struct {
  PinsConfig    pins[18];
  char          numOfCfg;
} Module_Struct;