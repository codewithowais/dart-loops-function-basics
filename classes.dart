void main() {
  // Object | instance
  Teacher teacher1 = Teacher();
  teacher1.name = 'Owais';
  teacher1.subjects.addAll(['Flutter', 'MEAN', "MERN"]);
  print(teacher1.canTeach("ABC"));
  Teacher teacher2 = Teacher();
  teacher2.name = 'Abdullah';
  teacher1.subjects.addAll(['Flutter', 'MEAN', "MERN"]);
  print(teacher2.name);
}

class Teacher {
  // properties | attributes
  var name = '';
  var subjects = [];

  // behaviours | methods
  canTeach(subject) {
    return subjects.any((awain) => awain == subject);
  }
}
