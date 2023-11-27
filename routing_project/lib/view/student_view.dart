import 'package:flutter/material.dart';
import 'package:routing_project/app/common/display_student.dart';
import 'package:routing_project/model/student.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  Widget build(BuildContext context) {
    List<Student> student =
        ModalRoute.of(context)!.settings.arguments as List<Student>;

    return Scaffold(
      appBar: AppBar(title: const Text("Student list")),
      body: student.isNotEmpty
          ? DisplayStudent(listStudents: student)
          : const Center(
              child: Text("No data found"),
            ),
    );
  }
}
