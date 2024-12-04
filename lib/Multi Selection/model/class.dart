class Student{

  int roll;
  String name;
  String course;
  bool isChecked = false;

  Student(this.roll, this.name, this.course);

  @override
  String toString() {
    return name;
  }
}