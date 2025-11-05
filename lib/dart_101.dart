void main() {
    // 1
    print('Welcome to Dart!'); 

    // 2
    var planet = 'Earth';
    print(planet);

    // 3
    int myAge = 16;
    print(myAge);

    // 4
    double piValue = 3.14159;
    print(piValue);

    // 5
    bool isDartFun = true;
    print(isDartFun);

    // 6,7
    int a = 15, b = 4;
    print(a + b); // 19
    print(a * b); // 60

    // 8
    String name = 'Alice';
    int age = 28;
    print('My name is $name and I am $age years old.');

    // 9
    var myNumber = 100; // inferred as int
    // myNumber = 'Hello'; // ผิด: type mismatch

    // 10
    final city = 'Bangkok';
    // city = 'Chiang Mai'; // ผิด: final ไม่สามารถเปลี่ยนค่าได้

    // 11
    const secondsInMinute = 60;

    // 12
    num flexibleNumber = 50;
    flexibleNumber = 75.5; // ถูกต้อง เพราะ num รับ int/double

    // 13
    int x = 10, y = 4;
    print(x / y); // 2.5 (double)

    // 14
    print(x ~/ y); // 2 (int)

    // 15
    print(x % y); // 2

    // 16,17
    int score = 85;
    print(score >= 80); // true
    print(score != 100); // true

    // 18,19,20
    bool isMember = true, hasCoupon = false;
    print(isMember && hasCoupon); // false
    print(isMember || hasCoupon); // true
    print(!hasCoupon); // true

    // 21
    int ageCheck = 25;
    if (ageCheck > 18) print('You are an adult.');

    // 22
    int number = -5;
    if (number > 0) print('Positive'); else print('Negative or Zero');

    // 23
    for (var i = 1; i <= 5; i++) print(i);

    // 24
    var j = 1;
    while (j <= 3) { print(j); j++; }

    // 25
    int score2 = 80;
    String result = (score2 >= 60) ? 'Pass' : 'Fail';
    print(result);

    // 26
    int day = 3;
    switch(day) {
        case 1:
            print("Monday");
            break;
        case 2:
            print("Tuesday");
            break;
        case 3:
            print("Wednesday");
            break;
        case 4:
            print("Thursday");
            break;
        case 5:
            print("Friday");
            break;
        case 6:
            print("Saturday");
            break;
        case 7:
            print("Sunday");
            break;
        default:
            print("Invalid Day");
      }
    // 27
    for (var i = 1; i <= 10; i++) { if (i == 4) break; print(i); }

    // 28
    for (var i = 1; i <= 5; i++) { if (i == 3) continue; print(i); }

    // 29
    int temp = 28;
    if (temp > 30) print("It's hot.");
    else if (temp >= 20) print("It's warm.");
    else print("It's cool.");

    // 30
    int number2 = 5;
    do { print(number2); } while (number2 < 5);
  }
