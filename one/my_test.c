#include "ruby.h"

// Defining a space for information and references about the module to be stored internally
VALUE MyTest = Qnil;

// Prototype for the initialization method - Ruby calls this, not you
void Init_my_test();

// Prototype for our method 'give_me_five' - methods are prefixed by 'method_' here
VALUE method_give_me_five(VALUE self);

// The initialization method for this module
void Init_my_test() {
  MyTest = rb_define_module("MyTest");
  rb_define_method(MyTest, "give_me_five", method_give_me_five, 0);
}

// Our 'give_me_five' method.. it simply returns a value of 5 for now.
VALUE method_give_me_five(VALUE self) {
        int x = 5;
        return INT2NUM(x);
}
