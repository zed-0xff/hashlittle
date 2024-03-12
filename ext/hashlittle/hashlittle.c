#include "hashlittle.h"

VALUE rb_mHashlittle;

RUBY_FUNC_EXPORTED void
Init_hashlittle(void)
{
  rb_mHashlittle = rb_define_module("Hashlittle");
}
