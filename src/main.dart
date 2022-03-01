
import 'dart:math';

/* 
    ---- operators(10, 2) -----
    a + b = 12
    a - b = 8
    a * b = 20
    a / b = 5.0
    a % b = 0
*/
void operators(num a, num b) {

  print("---- operators(${a}, ${b}) -----");
  
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");
  print("a % b = ${a % b}");

  print("\n");
}


/*
  ---- checkTypes -----
  num is Object: true
  double is Object: true
  int is Object: true
  bool is Object: true
  String is Object: true
*/
void checkTypes() {

  print("---- checkTypes -----");

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

  print("\n");
}
  
/*
  「Dart VM」と「JavaScriptの仕様」が異なり
  整数の扱いが一部変わるため
  bit演算とintの扱える範囲が異なる
  * JavaScriptはビット演算は一度32bit整数に変換される

  == Native ==
  bitwize_max = 4294967295
  bitwize_max_invalid = 4294967296
  over_bitwize_max = 4294967296
  int_max = 9007199254740992
  int_min = -9007199254740992

  == Web ==
  bitwize_max = 4294967295
  bitwize_max_invalid = 0
  over_bitwize_max = 4294967296
  int_max = 9007199254740992
  int_min = -9007199254740991
*/
void intRangeCheck() {

  print("---- intRangeCheck -----");

  int bitwize_max = (1 << 31) - 1 + (1 << 31);
  int bitwize_max_invalid = (1 << 32);
  int over_bitwize_max = bitwize_max + 1;
  int int_max = pow(2, 53).toInt();
  int int_min = - pow(2, 53).toInt();
  
  print("bitwize_max = ${bitwize_max}");
  print("bitwize_max_invalid = ${bitwize_max_invalid}");
  print("over_bitwize_max = ${over_bitwize_max}");
  print("int_max = ${int_max}");
  print("int_min = ${int_min}");

  print("\n");
}


/*
  Type of infer_int is int.
  Type of infer_string is String.
*/
void inference() {
  print("---- inference -----");

  var infer_int = 12;
  var infer_string = "Hello";

  print("Type of infer_int is ${infer_int.runtimeType}.");  
  print("Type of infer_string is ${infer_string.runtimeType}.");

  print("\n");
}

void main() {
  checkTypes();
  operators(10, 2);
  operators(10, 3);

  intRangeCheck();
  inference();
}
