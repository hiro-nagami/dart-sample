void main() {
  num n = 10;
  print("num is Object: ${n is Object}");  
  // => num is Object: true
  
  double d = 0.1;
  print("double is Object: ${d is Object}");
  // => double is Object: true
  
  int i = 2;
  print("int is Object: ${i is Object}"); 
  // => int is Object: true
  
  bool b = false;
  print("bool is Object: ${b is Object}");  
  // => bool is Object: true
    
  String s = "this is string";
  print("String is Object: ${s is Object}");  
  // => String is Object: true
}
