#include "hashlittle.h"
#include "lookup.h"

VALUE rb_mHashlittle;

static VALUE rb_hashlittle(int argc, VALUE *argv, VALUE self) {
  VALUE rb_key, rb_initval;
  uint32_t initval = 0;

  rb_scan_args(argc, argv, "11", &rb_key, &rb_initval);

  Check_Type(rb_key, T_STRING);

  // Get the byte array from the Ruby string
  uint8_t *key = (uint8_t *)RSTRING_PTR(rb_key);
  long key_len = RSTRING_LEN(rb_key);

  // If initval is provided, use it
  if (!NIL_P(rb_initval)) {
    initval = NUM2UINT(rb_initval);
  }

  // Compute the hash using hashlittle function
  uint32_t result = hashlittle(key, key_len, initval);

  // Return the hash as a Ruby integer
  return UINT2NUM(result);
}

static VALUE rb_hashlittle2(int argc, VALUE *argv, VALUE self) {
  VALUE rb_key, rb_seed;
  uint32_t pc = 0, pb = 0;
  uint64_t result;

  // Accept an optional uint64 as seed
  rb_scan_args(argc, argv, "11", &rb_key, &rb_seed);

  // If a seed is provided, split it into two uint32_t parts for hashlittle2
  if (!NIL_P(rb_seed)) {
    Check_Type(rb_seed, T_FIXNUM);
    uint64_t seed = NUM2ULL(rb_seed);
    pb = (uint32_t)(seed >> 32); // High 32 bits
    pc = (uint32_t)(seed & 0xFFFFFFFF); // Low 32 bits
  }

  Check_Type(rb_key, T_STRING);
  uint8_t *key = (uint8_t *)RSTRING_PTR(rb_key);
  long key_len = RSTRING_LEN(rb_key);

  // Compute hash
  hashlittle2(key, key_len, &pc, &pb);

  // Combine the pc and pb into a single uint64_t result
  result = ((uint64_t)pb << 32) | pc;

  return ULL2NUM(result); // Return a single uint64 value
}

RUBY_FUNC_EXPORTED void
Init_hashlittle(void)
{
  rb_mHashlittle = rb_define_module("Hashlittle");
  rb_define_singleton_method(rb_mHashlittle, "hashlittle", rb_hashlittle, -1);
  rb_define_singleton_method(rb_mHashlittle, "hashlittle2", rb_hashlittle2, -1);
}
