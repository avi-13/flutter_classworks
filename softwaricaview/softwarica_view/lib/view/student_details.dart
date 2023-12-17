import 'package:flutter/material.dart';
import 'package:softwarica_view/app/common/display_student.dart';
import 'package:softwarica_view/model/student.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    List<Student> students =
        ModalRoute.of(context)!.settings.arguments as List<Student>;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Students Details")),
        body: students.isNotEmpty
            ? DisplayStudent(
                listStudents: students,
              )
            : const Center(child: Text("No data Found")),
      ),
    );
  }
}
