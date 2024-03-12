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
  VALUE rb_key, rb_result;
  uint32_t pb = 0;
  uint32_t pc = 0;

  rb_scan_args(argc, argv, "11", &rb_key, &rb_result);

  if (NIL_P(rb_result)) {
    rb_result = rb_ary_new2(2);
  } else {
    Check_Type(rb_result, T_ARRAY);
    rb_ary_modify(rb_result);
  }

  Check_Type(rb_key, T_STRING);
  uint8_t *key = (uint8_t *)RSTRING_PTR(rb_key);
  long key_len = RSTRING_LEN(rb_key);

  hashlittle2(key, key_len, &pc, &pb);

  if( RARRAY_LEN(rb_result) < 2 ){
      rb_ary_resize(rb_result, 2);
  }

  rb_ary_store(rb_result, 0, UINT2NUM(pc));
  rb_ary_store(rb_result, 1, UINT2NUM(pb));

  return rb_result;
}

RUBY_FUNC_EXPORTED void
Init_hashlittle(void)
{
  rb_mHashlittle = rb_define_module("Hashlittle");
  rb_define_singleton_method(rb_mHashlittle, "hashlittle", rb_hashlittle, -1);
  rb_define_singleton_method(rb_mHashlittle, "hashlittle2", rb_hashlittle2, -1);
}
