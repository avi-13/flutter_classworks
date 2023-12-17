import 'package:flutter/material.dart';
import 'package:softwarica_view/app/common/display_teacher.dart';
import 'package:softwarica_view/model/teacher.dart';

class TeacherDetails extends StatefulWidget {
  const TeacherDetails({super.key});

  @override
  State<TeacherDetails> createState() => _TeacherDetailsState();
}

class _TeacherDetailsState extends State<TeacherDetails> {
  @override
  Widget build(BuildContext context) {
    List<Teacher> allTeachers =
        ModalRoute.of(context)!.settings.arguments as List<Teacher>;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("Teacher Details")),
          body: DisplayTeacher(listTeacher: allTeachers)),
    );
  }
}
