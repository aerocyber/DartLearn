void numFunc() {
  // Most if not all number related functions.
  // assumes x = -10 as the common value fpr all code in this gist.
  int x = -10;
  // bitlength: number of bits required to store the value as:

  // 1.a unsigned value:
  int xBitlength = x.bitLength;
  print("x.bitLenth (unsigned) = $xBitlength");
  /*
   * To find the number of bits needed to store the value as a signed value,
   *  add one, i.e. use x.bitLength + 1
  */
  print("X.bitLength (signed) = ${x.bitLength + 1}");

  // 2. isEven: Check if the number is even.
  bool xEven = x.isEven;
  print("$x is even is a $xEven statement");

  // 3. isFinite: Check if the number is finite.
  bool isfinite = x.isFinite;
  print("$x is finite is a $isfinite statement");

  // 4. isInfinite: Check if a number is infinite.
  bool isinfinite = x.isInfinite;
  print("$x is infinite is a $isinfinite statement.");

  // 5. isNaN: Check if something is Not-a-Number
  var NaN = 2e5000000000000000;
  print("$NaN is Not a Number is a ${NaN.isNaN} statement.");

  // 6. isNegative: Check if a number is negative or not.
  bool xNeg = x.isNegative;
  print("$x is negative is a $xNeg statement.");

  // 7. isOdd: Check if odd
  bool xOdd = x.isOdd;
  print("$x is odd is a $xOdd statement.");

  // 8. abs(): absolute value.
  int xAbsolute = x.abs();
  print("The absolute value of $x is $xAbsolute");

  // 9. ceil()
  num Ceil = x.ceil();
  print("After applying $x.ceil(), the value is $Ceil");

  // 10. round()
  int Round = x.round();
  print("$x.round = $Round");
}

int _getResult() {
  //a costly variable.
  return 5;
}

void lateEx() {
  // source of the below comments and code: https://dev.to/pktintali/late-variables-in-dart-dart-learning-series-1-2opf
  late String
      title; // late modifier can be used while declaring a non-nullable variable that’s initialized after its declaration.
  void getTitle() {
    title = 'Default';
    print('Title is $title');
  }

  // This is the program's only call to _getResult().
  late int result = _getResult(); // Lazily initialized.
  // In the above example, if the result variable is never used, then the expensive _getResult() function is never called.
  print("Value of the late variable result is $result");

  //Let's try to get value of title...
//   print("$title is the value of title");
//  Uncaught Error: LateInitializationError: Local 'title' has not been initialized. for the aabove code.
//   Now, let's call and declare the value of title
  getTitle();
  print("$title called outside of getTitle()!");
}

void ifelse() {
  // if-else construct.
  double a = 19.9999999; // double/num for decimals.
  /*
   * num ==> accept int/double
   * int ==> integer
   * double ==> large values including decimals
   */
  if (a < 20) {
    print("$a < 20");
  } else if (a == 20) {
    print("$a = 20");
  } else {
    print("$a > 20");
  }
}

void printNum(value, times, variable, type) {
  print(
      "Value of $variable of type $type is $value when executed the $times nt time."); // print the items by sustituting values.
  /*
    ${var_name} replaces the {var_name} with the value of the particular variable.
    */
}

void main() {
  // The main class of the code.
  int num = 20; // Declare and initialise a variable of type int (integer).
  printNum(num, 1, "num", "int"); // Call the function.
  bool boolean = true; // A bool (True or False)
  printNum(boolean, 2, "boolean", "bool");
  boolean = false;
  printNum(boolean, 3, "boolean", "bool");
  String string = 'Hello';
  printNum(string, 4, "string", "String");
  Object anObject = "Any datatype";
  printNum(anObject, 5, "anObject", "Object");
  dynamic dynamicData = "Some dynamic data";
  printNum(dynamicData, 6, "dynamicData", "dynamic");
  List list = ["A", true, 56, 5.6];
  printNum(list, 7, "list", "List");
  Map map = {
    "name": "aerocyber",
    "gist-id": "20149af21aae003b633ed6cb68c990dc"
  };
  printNum(map, 8, "map", "Map");
  int? tryme; // For testing null
  tryme = null;
  printNum(tryme, 8, "tryme", "null"); // now, the value of tryme is null.
  // int str = null; // Throws error because the value is null. Unless explicitly declared,
  // a variable cannot be null.
  int nonNullInt;
  // printNum(nonNullInt, 8.5, "nonNullInt", "int"); // Error: nonNullInt declared but not assigned a value.
  printNum(nonNullInt = 20, 9, "nonNullInt", "int"); // It works!
  print(nonNullInt); // value is assigned when we used inside printNum()
  ifelse();
  lateEx();
  final name = "aerocyber";
  print("The author of this gist is $name.");
  print("Do you know " + map["name"] + "?");
  // NOTE: instance variable (variable inside a class) can be final but not const.
  numFunc();
}
/*
 * var: can be used to declare variable that can change value.
 * const: The const keyword isn’t just for declaring constant variables. You can also use it to create constant values, as well as to declare constructors that create constant values. Any variable can have a constant value. (source of comment: https://dart.dev)
 * final: variables that cannot change value.
*/
