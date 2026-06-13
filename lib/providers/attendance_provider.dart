import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendanceProvider extends ChangeNotifier {

  final List<Student> _students = [
    Student(name: 'Rahim'),
    Student(name: 'Karim'),
    Student(name: 'Sakib'),
    Student(name: 'Tamim'),
    Student(name: 'Mim'),
    Student(name: 'Nusrat'),
    Student(name: 'Jannat'),
    Student(name: 'Hasan'),
    Student(name: 'Rakip'),
    Student(name: 'Rifat'),
  ];

  List<Student> get students => _students;

  void toggleAttendance(int index, bool value) {
    _students[index].isPresent = value;
    notifyListeners();
  }

  int get presentCount =>
      _students.where((student) => student.isPresent).length;

  int get absentCount =>
      _students.where((student) => !student.isPresent).length;
}