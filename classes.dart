/**
 * Pillars
 * 1) Abstraction
 * 2) Inheritance
 * 3) Encapsulation
 * 4) Polymorphism
 */

/**
 * 1) Single Inheritance
 * 2) Multiple Inheritance
 * 3) Multi level Inheritance
 * 4) Hierarchical inheritance
 */

void main() {
  int num1 = 10;
  Student student1 = Student(name: "Ahmed", rollNo: "RN001");
  Student studentSpecial1 = Student.special();

  Cat cat = Cat();
}

class Student {
  // Attributes | Properties
  var name = "";
  var rollNo = "";
  var age = "";

  //Default Constructor
  Student({required this.name, required this.rollNo});

  // Named Constructor
  Student.special() {}

  // Methods | Behaviours

  setStudentInfo(studentName, studentRollNo) {
    name = studentName;
    rollNo = studentRollNo;
  }

  printStudentInfo() {
    print("Name: $name");
    print("Roll No: $rollNo");
    print("Age: $age");
  }

  printName() {
    print("Name: $name");
  }
}

getPercentage(total) {
  var percentage;
  return percentage;
}

class Animal {
  var blood;
}

class Cat extends Animal {
  printBlood() {
    print(blood);
  }
}

class Dog extends Animal {}
