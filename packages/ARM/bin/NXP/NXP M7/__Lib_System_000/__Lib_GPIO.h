#include "stdint.h"

typedef struct {
  uint32_t pins[13];
  uint32_t configs[13];
  uint32_t gpio_remap;
} Module_Struct;