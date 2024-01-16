// 算术运算符
assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // 除 结果为 double
assert(5 ~/ 2 == 2); // 除并取整 Result is an int
assert(5 % 2 == 1); // 取模 Remainder 

// 关系运算符
assert(2 == 2);
assert(2 != 3);
assert(3 > 2);
assert(2 < 3);
assert(3 >= 3);
assert(2 <= 3);

// 类型判断运算符
(employee as Person).firstName = 'Bob'; // 类型转换
if (employee is Person) {} // 如果对象是指定类型则返回 true
if (employee is! Person) {} // 如果对象是指定类型则返回 false

// 赋值运算符
a = value; // 赋值
b ??= value; // 如果value不为空才赋值

// 逻辑运算符
if (!done && (col == 0 || col == 3)) {
  // ...Do something...
}

// 条件表达式
var visibility = isPublic ? 'public' : 'private'; // 三元表达式
String playerName(String? name) => name ?? 'Guest'; // 根据null情况决定是否赋值

// 级联运算符
// 这个运算符是真有意思
// 例子1
var paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;
// 等价于
var paint = Paint();
paint.color = Colors.black;
paint.strokeCap = StrokeCap.round;
paint.strokeWidth = 5.0;
// 例子2
querySelector('#confirm') // Get an object.
  ?..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView();
// 等价于
var button = querySelector('#confirm');
button?.text = 'Confirm';
button?.classes.add('important');
button?.onClick.listen((e) => window.alert('Confirmed!'));
button?.scrollIntoView();
// 例子3（嵌套示例）
final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = (PhoneNumberBuilder()
            ..number = '415-555-0100'
            ..label = 'home')
          .build())
    .build();

Dart 代码库中有大量返回 Future 或 Stream 对象的函数，这些函数都是 异步 的，它们会在耗时操作（比如I/O）执行完毕前直接返回而不会等待耗时操作执行完毕。

async 和 await 关键字用于实现异步编程，并且让你的代码看起来就像是同步的一样。

处理 Future
可以通过下面两种方式，获得 Future 执行完成的结果：

使用 async 和 await
使用 Future API
使用 async 和 await 的代码是异步的

  如果想在 main() 函数中使用 await，那么 main() 函数就必须使用 async 关键字标识
  声明异步函数
异步函数 是函数体由 async 关键字标记的函数。

将关键字 async 添加到函数并让其返回一个 Future 对象。
  假设有如下返回 String 对象的方法：

String lookUpVersion() => '1.0.0';
将其改为异步函数，返回值是 Future：

Future<String> lookUpVersion() async => '1.0.0';
注意，函数体不需要使用 Future API。如有必要，Dart 会创建 Future 对象。

  处理 Stream
如果想从 Stream 中获取值，可以有两种选择：

使用 async 关键字和一个 异步循环（使用 await for 关键字标识）。
使用 Stream API。
在使用 await for 关键字前，确保其可以令代码逻辑更加清晰并且是真的需要等待所有的结果执行完毕。例如，通常不应该在 UI 事件监听器上使用 await for 关键字，因为 UI 框架发出的事件流是无穷尽的。

使用 await for 定义异步循环看起来是这样的：

await for (varOrType identifier in expression) {
  // 每次 Stream 提交一个值就会执行一次
}
表达式 的类型必须是 Stream。执行流程如下：

等待直到 Stream 返回一个数据。
使用 1 中 Stream 返回的数据执行循环体。
重复 1、2 过程直到 Stream 数据返回完毕。

  异步的使用

  1.通过网络获取数据。
2.写入数据库。
3. 从文件中读取数据。
这种异步计算通常以Future的形式提供其结果，如果结果有多个部分，则以Stream的形式提供。这些计算在程序中引入了异步性。
  一个Future表示一个异步操作的结果，可以有两种状态：未完成（uncompleted）或已完成（completed）。
  async 和 await
async和await关键字提供了一种声明性的方式来定义异步函数并使用其结果。在使用async和await时要记住这两条基本准则。

要定义一个异步函数，请在函数主体前添加async。
await关键字只在异步函数中起作用。
  首先，在函数主体前添加async关键字。

void main() async { ··· }
如果该函数有一个已声明的返回类型，那么将该类型更新为Future<T>，其中T是该函数返回值的类型。如果函数没有明确地返回一个值，那么返回类型就是Future<void>。

Future<void> main() async { ··· }
现在你有了一个异步函数，你可以使用 await 关键字来等待一个未来的完成。

print(await createOrderMessage());

在应用中，所有的 Dart 代码都在 isolate 中运行。每一个 Dart 的 isolate 都有独立的运行线程，它们无法与其他 isolate 共享可变对象。在需要进行通信的场景里，isolate 会使用消息机制。尽管 Dart 的 isolate 模型设计是基于操作系统提供的进程和线程等更为底层的原语进行设计的。

  
大部分 Dart 应用只会使用一个 isolate（即 主 isolate），同时你也可以创建更多的 isolate，从而在多个处理器内核上达成并行执行代码的目的。
  事件循环和队列
Dart 应用程序具有一个包含两个队列的事件循环 - 事件队列(Event quque)和微任务队列(MicroTask quque)。

事件队列包含所有外部事件：I/O、鼠标事件、绘制事件、计时器、Dart 隔离之间的消息等。
  有一些常用方法如下：

new Future(fun):（异步）添加到Event队列
Future.delayed():（异步）执行完延迟后，添加到Event队列
Future.error(error,stackTrace)：创建一个带错误的future
Future.microtask(fun):（异步）添加到MicroTask队列
scheduleMicrotask(fun):（异步）添加到MicroTask队列
Future.sync(fun):（同步）
Future.value(value):（异步）添加到Event队列
