import 'dart:math';

void main() {
  // 1.
  var animals = ['Tiger', 'Lion', 'Cat'];
  print(animals[1]); // Lion

  // 2. .add()
  animals.add('Dog');
  print('After add: $animals');

  // 3. .length
  print('Length: ${animals.length}');

  // 4. Map studentScore
  var studentScore = {'math': 90, 'english': 85};
  print('math score: ${studentScore['math']}');

  // 5. Set uniqueNumbers
  var uniqueNumbers = {10, 20, 10, 30, 20};
  print('Set: $uniqueNumbers');

  // 6. removeAt()
  var colors = ['Red', 'Green', 'Blue'];
  colors.removeAt(1);
  print('Colors after removeAt: $colors');

  // 7. indexOf()
  var numbers = [5, 10, 15, 10];
  print('Index of first 10: ${numbers.indexOf(10)}');

  // 8. Generics List<String>
  List<String> names = [];
  names.add('John');
  // names.add(123); // จะเป็น error ทางคอมไพล์ (commented out)
  print('Names (String only): $names');

  // 9. for...in
  for (var a in animals) {
    print('Animal: $a');
  }

  // 10. containsKey()
  print('Has science key? ${studentScore.containsKey('science')}');

  // 11. Spread operator
  var listA = [1, 2];
  var listB = [3, 4];
  var combined = [0, ...listA, ...listB, 5];
  print('Combined: $combined');

  // 12. Collection if
  bool isPremiumUser = false;
  var features = ['Basic Feature', if (isPremiumUser) 'Premium Feature'];
  print('Features: $features');

  // 13. Collection for
  var original = [1, 2, 3];
  var squares = [for (var v in original) v * v];
  print('Squares: $squares');

  // 14. forEach() on Map
  studentScore.forEach((subject, score) {
    print('Subject: $subject, Score: $score');
  });

  // 15. Why Set has 3 members
  print('Set มีสมาชิกเพียง 3 ตัว เพราะมันไม่เก็บค่าซ้ำ — ค่าที่ซ้ำกัน (10 และ 20) จะถูกละทิ้งโดยอัตโนมัติ.');

  // Functions
  printMyName();
  print('Current year: ${getCurrentYear()}');
  print('multiply(3,4): ${multiply(3, 4)}');
  sayGoodbye();

  print('multiply(10,5): ${multiply(10, 5)}');

  showUserDetails(name: 'David', age: 30); // named params, order swapped allowed

  // showUserDetailsRequired requires name
  showUserDetailsRequired(name: 'oak', age: null);

  // greet with default greeting
  greet(name: 'Alice');
  greet(name: 'Bob', greeting: 'Hi');

  // anonymous forEach
  List<int> listNums = [1, 2, 3];
  listNums.forEach((n) => print('Number: $n'));

  // isEven arrow
  print('isEven(4): ${isEven(4)}');

  // logMessage
  logMessage('Error found');
  logMessage('Critical error', 'ERROR');

  // processNumbers + printSquare
  processNumbers([1, 2, 3], printSquare);
  processNumbers([10, 20], (n) => print('Value: $n'));

  // OOP - Part 1
  var myCar = Car();
  myCar.color = 'Red';
  myCar.year = 2020;
  print('myCar.color: ${myCar.color}');
  myCar.drive();
  print('Wheels (static): ${Car.numberOfWheels}');

  var myBook = Book('Dart Basics', 200);
  print('Book: ${myBook.title}, pages: ${myBook.pages}');

  print('MathHelper.add(15,30): ${MathHelper.add(15, 30)}');

  var guestUser = User.guest();
  print('Guest username: ${guestUser.username}');

  var circle = Circle(3.0);
  print('Circle area: ${circle.area}');

  var myAccount = BankAccount();
  myAccount.deposit = 100;
  myAccount.deposit = -50; // ignored
  print('myAccount.balance: ${myAccount.balance}');

  DatabaseConnection();
  DatabaseConnection();
  DatabaseConnection();
  print('DatabaseConnection.connectionCount: ${DatabaseConnection.connectionCount}');

  // OOP - Part 2
  var vehicleCar = Car2();
  vehicleCar.move();

  var carOverride = Car3();
  carOverride.move();

  var light = TrafficLight.red;
  checkLight(light);

  var bird = Bird();
  bird.fly();

  var studentObj = Student('Alice', 123);
  print('Student name: ${studentObj.name}, id: ${studentObj.studentId}');

  // abstract Database and MySQLDatabase
  var mysql = MySQLDatabase();
  mysql.connect();

  var logger = ConsoleLogger();
  logger.log('This is a log');

  var dog = Dog();
  dog.eat();

  var duck = Duck();
  duck.walk();
  duck.swim();

  var shapeCircle = Circle2(2.0, 'blue');
  print('ShapeCircle area: ${shapeCircle.getArea()}');
}

// --- Functions section ---
void printMyName() {
  print('Nickname: oak'); // เปลี่ยนเป็นชื่อเล่นของคุณได้
}

int getCurrentYear() => DateTime.now().year;

int multiply(int a, int b) {
  return a * b;
}

void sayGoodbye() => print('Goodbye!');

void showUserDetails({String? name, int? age}) {
  print('Name: $name, Age: $age');
}

void showUserDetailsRequired({required String name, int? age}) {
  print('Name(required): $name, Age: $age');
}

void greet({required String name, String greeting = 'Hello'}) {
  print('$greeting, $name');
}

bool isEven(int number) => number % 2 == 0;

void logMessage(String message, [String level = 'INFO']) {
  print('[$level] $message');
}

void processNumbers(List<int> list, Function(int) action) {
  for (var n in list) {
    action(n);
  }
}

void printSquare(int n) {
  print(n * n);
}

// --- OOP Part 1 ---
class Car {
  String? color;
  int? year;

  void drive() {
    var c = color ?? 'unknown';
    print('Driving the $c car...');
  }

  static const int numberOfWheels = 4;
}

class Book {
  String title;
  int pages;
  Book(this.title, this.pages);
}

class MathHelper {
  static int add(int a, int b) => a + b;
}

class User {
  String username;
  User(this.username);
  User.guest() : username = 'Guest';
}

class Circle {
  double radius;
  Circle(this.radius);
  double get area => pi * radius * radius;
}

class BankAccount {
  double _balance = 0;
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double get balance => _balance;
}

class DatabaseConnection {
  static int connectionCount = 0;
  DatabaseConnection() {
    connectionCount++;
  }
}

// --- OOP Part 2 ---
class Vehicle {
  void move() {
    print('Moving...');
  }
}

class Car2 extends Vehicle {}

class Car3 extends Vehicle {
  @override
  void move() {
    print('Driving the car...');
  }
}

enum TrafficLight { red, yellow, green }

void checkLight(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      print('STOP');
      break;
    case TrafficLight.yellow:
      print('WAIT');
      break;
    case TrafficLight.green:
      print('GO');
      break;
  }
}

mixin Flyer {
  void fly() {
    print('I am flying!');
  }
}

class Bird with Flyer {}

class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int studentId;
  Student(String name, this.studentId) : super(name);
}

abstract class Database {
  void connect();
}

class MySQLDatabase extends Database {
  @override
  void connect() {
    print('Connecting to MySQL...');
  }
}

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('LOG: $message');
  }
}

class Animal {
  void eat() {
    print('Animal is eating.');
  }
}

class Dog extends Animal {
  @override
  void eat() {
    super.eat();
    print('Dog is eating bones.');
  }
}

mixin Walker {
  void walk() {
    print('I am walking.');
  }
}

mixin Swimmer {
  void swim() {
    print('I am swimming.');
  }
}

class Duck with Walker, Swimmer {}

// Shape and Circle2 (to avoid name conflict with earlier Circle)
abstract class Shape {
  String color;
  Shape(this.color);
  double getArea();
}

class Circle2 extends Shape {
  double radius;
  Circle2(this.radius, String color) : super(color);
  @override
  double getArea() => pi * radius * radius;
}
