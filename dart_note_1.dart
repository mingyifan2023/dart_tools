// 2. Dart语言基础
// 2.1 Dart hello world
// main方法是固定的写法，是程序的入口

// print是打印的方法，可以在控制台打印出内容

// print('hello world')是打印的内容

void main() {
  print('hello world');
}
// 2.2 Dart变量
// Dart是强类型语言，变量必须要有类型，变量的类型是在编译时确定的，变量的类型一旦确定，就不能改变

// Dart中的变量分为两种：1.值类型 2.引用类型

// 值类型：int、double、bool、String、List、Map、Set

// 引用类型：类、接口、函数

// 变量未初始化时，值为null

// 值类型的变量在内存中占用固定的空间，而引用类型的变量在内存中占用的空间是不固定的，它的大小是根据它所引用的对象的大小来决定的

// 值类型的变量在内存中是存储的它的值，而引用类型的变量在内存中是存储的它所引用的对象的地址

// 值类型的变量是直接存储在栈中的是连续的，而引用类型的变量是存储在堆中的是不连续的，它的值是一个指针，指向它所引用的对象

// 语法：var 变量名 = 值;

void main() {
  var name = '张三';
  var age = 20;
  var height = 1.88;
  var flag = true;
  print(name);
  print(age);
  print(height);
  print(flag);
}
// 语法：数据类型 变量名 = 值;

void main() {
  String name = '张三';
  int age = 20;
  double height = 1.88;
  bool flag = true;
  print(name);
  print(age);
  print(height);
  print(flag);
}
// 2.3 Dart常量
// 常量是在编译时就确定下来的值，常量的值一旦确定，就不能改变

// final修饰的变量是常量，只能赋值一次

// const修饰的变量是常量，只能赋值一次，而且是编译时常量

// final和const的区别：const是编译时常量，final是运行时常量

void main() {
  final name = '张三';
  const age = 20;
  print(name);
  print(age);
}
// 2.4 Dart字符串
// Dart中的字符串有两种：1.单引号 2.双引号

void main() {
  String str1 = 'hello world';
  String str2 = "hello world";
  print(str1);
  print(str2);
}
// Dart中的字符串可以使用+号进行拼接

void main() {
  String str1 = 'hello';
  String str2 = 'world';
  String str3 = str1 + str2;
  print(str3);
}
// Dart中的字符串可以使用<span class="katex">

void main() {
  String name = '张三';
  int age = 20;
  String str = '我的名字是$name, 我的年龄是$age';
  print(str);
}
// Dart中的字符串可以使用进行变量的拼接∗∗¨G6G∗∗Dart中的字符串可以使用{}进行表达式的拼接

void main() {
  int a = 10;
  int b = 20;
  String str = 'a + b = ${a + b}';
  print(str);
}
// Dart中的字符串可以使用三个单引号或者三个双引号进行多行字符串的拼接

void main() {
  String str1 = '''
  hello
  world
  ''';
  String str2 = """
  hello
  world
  """;
  print(str1);
  print(str2);
}
// Dart中的字符串常用方法

// 1.length：获取字符串的长度

// 2.isEmpty：判断字符串是否为空

// 3.isNotEmpty：判断字符串是否不为空

// 4.contains：判断字符串是否包含某个子串

// 5.startsWith：判断字符串是否以某个子串开头

// 6.endsWith：判断字符串是否以某个子串结尾

// 7.indexOf：获取某个子串在字符串中第一次出现的位置

// 8.lastIndexOf：获取某个子串在字符串中最后一次出现的位置

// 9.substring：截取字符串

// 10.split：分割字符串

// 11.trim：去除字符串两端的空格

// 12.toLowerCase：将字符串转换成小写

// 13.toUpperCase：将字符串转换成大写

void main() {
  String str = 'hello world';
  print(str.length); // 11
  print(str.isEmpty); // false
  print(str.isNotEmpty); // true
  print(str.contains('hello')); // true
  print(str.startsWith('hello')); // true
  print(str.endsWith('world')); // true
  print(str.indexOf('l')); // 2
  print(str.lastIndexOf('l')); // 9
  print(str.substring(0, 5)); // hello
  print(str.split(' ')); // [hello, world]
  print(str.trim()); // hello world
  print(str.toLowerCase()); // hello world
  print(str.toUpperCase()); // HELLO WORLD
}
// 2.5 Dart运算符
// Dart中的运算符分为：算术运算符、关系运算符、逻辑运算符、赋值运算符、条件运算符、类型运算符

// Dart中的算术运算符有：+、-、*、/、~/、%

void main() {
  int a = 10;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}
// Dart中的关系运算符有：==、!=、>、<、>=、<=

void main() {
  int a = 10;
  int b = 3;
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
}
// Dart中的逻辑运算符有：&&、||、!

void main() {
  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2);
  print(flag1 || flag2);
  print(!flag1);
}
// Dart中的赋值运算符有：=、+=、-=、*=、/=、~/=、%=、??=

void main() {
  int a = 10;
  a += 2;
  print(a);
  a -= 2;
  print(a);
  a *= 2;
  print(a);
  a /= 2;
  print(a);
  a ~/= 2;
  print(a);
  a %= 2;
  print(a);
  a ??= 2;
  print(a);
}
// Dart中的条件运算符有：?:、??、??=

void main() {
  int a = 10;
  int b = 3;
  int c = a > b ? a : b;
  print(c);
  int d = a ?? b;
  print(d);
  int e = null;
  int f = e ?? 100;
  print(f);
}
// Dart中的类型运算符有：as、is、is!

void main() {
  var a = 'hello';
  print(a is String);
  print(a is! int);
}
// Dart中的级联运算符（..）

void main() {
  Person p = Person();
  p.name = '张三';
  p.age = 20;
  p.run();
}
class Person {
  String name = '';
  int age = 0;
  void run() {
    print('run $name $age');
    // run 张三 20
  }
}
// 2.6 Dart流程控制语句
// Dart中的流程控制语句分为：if语句、switch语句、for语句、while语句、do-while语句、break语句、continue语句、label语句

// Dart中的if语句

void main() {
  int score = 60;
  if (score >= 90) {
    print('优秀');
  } else if (score >= 80) {
    print('良好');
  } else if (score >= 60) {
    print('及格');
  } else {
    print('不及格');
  }
}
// Dart中的switch语句

void main() {
  int score = 60;
  switch (score) {
    case 90:
      print('优秀');
      break;
    case 80:
      print('良好');
      break;
    case 60:
      print('及格');
      break;
    default:
      print('不及格');
  }
}
// Dart中的for语句

void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
}
// Dart中的while语句

void main() {
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
}
// Dart中的do-while语句

void main() {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);
}
// Dart中的break语句

void main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}
// Dart中的continue语句

void main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
// Dart中的label语句

void main() {
  outerLoop:
  for (int i = 0; i < 5; i++) {
    innerLoop:
    for (int j = 0; j < 5; j++) {
      if (j == 2) {
        break outerLoop;
      }
      print(j);
    }
  }
}

// 2.6 Dart中的流程控制语句详解
// if else 用于条件判断，如果条件为真，则执行if语句块，否则执行else语句块

// /**
//  * if else
//  * if else 用于条件判断
//  */
void IfElse() {
  int score = 60;
  if (score >= 90) {
    print('优秀');
  } else if (score >= 80) {
    print('良好');
  } else if (score >= 60) {
    print('及格');
  } else {
    print('不及格');
  }
}
// switch 用于多条件判断，当条件满足时，执行对应的语句块

// /**
//  * switch case
//  * switch case 用于条件判断，支持 int、String、编译时常量等
//  */
void SwitchCase() {
  int score = 60;
  switch (score) {
    case 90:
      print('优秀');
      break;
    case 80:
      print('良好');
      break;
    case 60:
      print('及格');
      break;
    default:
      print('不及格');
  }
// }
// for 用于循环，循环次数由循环条件决定

// // for 循环
void ForLoop() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
}
// while循环先判断条件是否成立，如果成立，就执行循环体，然后再判断条件是否成立，如果成立，就再次执行循环体，以此类推，直到条件不成立，循环结束。

// /**
//  * while 循环
//  * while循环先判断条件是否成立，如果成立，就执行循环体
//  * 然后再判断条件是否成立，如果成立，就再次执行循环体
//  * 以此类推，直到条件不成立，循环结束。
//  */
void WhileLoop() {
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
}
// do while 循环先执行循环体，然后再判断条件是否成立，如果成立，就再次执行循环体，以此类推，直到条件不成立，循环结束。

// /**
//  * do while 循环
//  * 1.先执行循环体，再判断条件
//  * 2.循环体至少会执行一次
//  * 3.循环体中要注意不要出现死循环
//  */
void DoWhileLoop() {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);
}
// break 用于跳出循环

// /**
//  * break 用于跳出循环
//  */
void BreakLoop() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}
// continue 用于跳过本次循环，继续下一次循环

// /**
//  * continue 用于跳过本次循环，继续下一次循环
//  * 不能单独使用，必须配合循环使用
//  */
void ContinueLoop() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
// for in 用于遍历集合，遍历的是集合中的元素

// /**
//  * 1. for in 循环可以遍历任何对象的 Iterable 属性
//  * 2. for in 循环可以遍历任何实现了 Iterable 接口的对象
//  */
void ForInLoop() {
  List list = [1, 2, 3, 4, 5];
  for (var item in list) {
    print(item);
  }
}
// forEach 方法是 Iterable 类的一个方法，它的作用是对集合中的每个元素执行指定的操作。它的参数是一个函数，这个函数的作用是对集合中的每个元素执行的操作

// /**
//  * forEach 方法是 Iterable 类的一个方法，它的作用是对集合中的每个元素执行指定的操作
//  * 它的参数是一个函数，这个函数的作用是对集合中的每个元素执行的操作
//  */
void ForEachLoop() {
  List list = [1, 2, 3, 4, 5];
  list.forEach((item) {
    print(item);
  });
}
// label 用于标记循环，配合 break 和 continue 使用

// /**
//  * label 用于标记循环，配合 break 和 continue 使用
//  */
void LabelLoop() {
  outerLoop:
  for (int i = 0; i < 5; i++) {
    innerLoop:
    for (int j = 0; j < 5; j++) {
      if (j == 2) {
        break outerLoop;
      }
      print(j);
    }
  }
}
// assert 用于判断表达式是否为 true，如果为 false，就会抛出异常

// /**
//  * assert 用于判断表达式是否为 true，如果为 false，就会抛出异常
//  * assert 用于调试，不会影响程序的正常执行
//  */
void Assert() {
  int score = 60;
  assert(score >= 60);
  print('passed assert');
}
// Throw 用于抛出异常

// /**
//  * Throw 用于抛出异常
//  */
void Throw() {
  int score = 60;
  if (score < 60) {
    throw Exception('分数不能小于60');
  }
  print('throw');
}
// try catch finally 用于捕获异常

// /**
//  * try catch finally
//  * try catch finally 用于捕获异常
//  * try catch finally 用于自定义异常
//  * finally 用于释放资源
//  */
void TryCatchFinally() {
  try {
    int score = 60;
    if (score < 60) {
      throw Exception('分数不能小于60');
    }
    print('try');
  } catch (e) {
    print(e);
  } finally {
    print('finally');
  }
}
// rethrow 用于重新抛出异常

// /**
//  * rethrow 用于重新抛出异常
//  */
void Rethrow() {
  try {
    int score = 60;
    if (score < 60) {
      throw Exception('分数不能小于60');
    }
    print('try');
  } catch (e) {
    print(e);
    rethrow;
  } finally {
    print('finally');
  }
}
// async await 用于异步编程

// /**
//  * async await 用于异步编程
//  */
void AsyncAwait() async {
  print('start');
  await Future.delayed(Duration(seconds: 2), () {
    print('async await');
  });
  print('end');
}


// 2. Dart语言基础
// 2.7 Dart函数
// Dart中的函数分为：无参函数、有参函数、可选参数、默认参数、匿名函数、箭头函数、闭包

// Dart中的无参函数

void main() {
  printPerson();
}
void printPerson() {
  print('张三');
}
// Dart中的有参函数

void main() {
  printPerson('张三', 20);
}
void printPerson(String name, int age) {
  print('$name $age');
}
// Dart中的位置可选参数

void main() {
  printPerson('张三', 20);
  printPerson('张三');
}
void printPerson(String name, [int age]) {
  print('$name $age');
}
// Dart中的命名可选参数

void main() {
  printPerson('张三', age: 20);
  printPerson('张三');
}
void printPerson(String name, {int age}) {
  print('$name $age');
}
// Dart中的默认参数

void main() {
  printPerson('张三', 20);
  printPerson('张三');
}
void printPerson(String name, [int age = 18]) {
  print('$name $age');
}
// Dart中的匿名函数

void main() {
  var list = ['香蕉', '苹果', '西瓜'];
  list.forEach((value) {
    print(value);
  });
}
// Dart中的箭头函数

void main() {
  var list = ['香蕉', '苹果', '西瓜'];
  list.forEach((value) => print(value));
}
// Dart中的闭包

void main() {
  Function func = a();
  func();
  func();
  func();
}
Function a() {
  int count = 0;
  printCount() {
    print(count++);
  }
  return printCount;
}
// Dart中的递归函数

void main() {
  print(sum(100));
}
int sum(int num) {
  if (num == 1) {
    return 1;
  }
  return num + sum(num - 1);
}
// Dart中的函数作为参数

void main() {
  print(sum(10, 20));
  print(sum(10, 20, printNum));
}
int sum(int num1, int num2, [Function printNum]) {
  if (printNum != null) {
    printNum(num1);
    printNum(num2);
  }
  return num1 + num2;
}
void printNum(int num) {
  print(num);
}
// Dart中的函数作为参数传递

void main() {
  List list = [1, 2, 3, 4, 5];
  print(listWhere(list, isEven));
}
bool isEven(int num) {
  return num % 2 == 0;
}
List listWhere(List list, Function f) {
  List newList = [];
  for (var value in list) {
    if (f(value)) {
      newList.add(value);
    }
  }
  return newList;
}
// Dart中的函数类型

void main() {
  print(sum(10, 20));
  print(sum(10, 20, printNum));
}
int sum(int num1, int num2, [Function printNum]) {
  if (printNum != null) {
    printNum(num1);
    printNum(num2);
  }
  return num1 + num2;
}
void printNum(int num) {
  print(num);
}
// 2.8 Dart中的类
// Dart中的类

void main() {
  Person p = new Person();
  p.name = '张三';
  p.age = 20;
  p.printInfo();
}
class Person {
  String name;
  int age;
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的构造函数

void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的命名构造函数

void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
  Person p1 = new Person.now();
  p1.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  Person.now() {
    this.name = '李四';
    this.age = 30;
  }
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的初始化列表

void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  Person.now() : this('李四', 30);
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的常量构造函数

void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的工厂构造函数

void main() {
  Person p = new Person('张三', 20);
  p.printInfo();
}
class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
  factory Person.now() {
    return new Person('李四', 30);
  }
  void printInfo() {
    print('$name $age');
  }
}
// Dart中的类的继承

void main() {
  Student s = new Student();
  s.name = '张三';
  s.age = 20;
  s.printInfo();
}
class Person {
  String name;
  int age;
  void printInfo() {
    print('$name $age');
  }
}
// class Student extends Person {}
// Dart中的类的继承构造函数

void main() {
  Student s = new Student('张三', 20);
  s.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
class Student extends Person {
  Student(String name, int age) : super(name, age);
}
// Dart中的类的继承重写方法

void main() {
  Student s = new Student('张三', 20);
  s.printInfo();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print('$name $age');
  }
}
class Student extends Person {
  Student(String name, int age) : super(name, age);
  @override
  void printInfo() {
    print('name: $name age: $age');
  }
}
// 2.9 Dart中的抽象类
// Dart中的抽象类

void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
// Dart中的抽象类的抽象方法

void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
// Dart中的抽象类的抽象方法的实现

void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
// 2.10 Dart中的接口
// Dart中的接口

void main() {
  // Person p = new Person();
  Student s = new Student();
  s.run();
}
abstract class Person {
  void run();
}
class Student extends Person {
  @override
  void run() {
    print('run');
  }
}
