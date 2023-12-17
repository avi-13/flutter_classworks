import 'dart:math';

import 'package:flutter/material.dart';
import 'package:softwarica_view/model/teacher.dart';
import 'package:softwarica_view/routes/app_routes.dart';

class CreateTeacher extends StatefulWidget {
  const CreateTeacher({super.key});

  @override
  State<CreateTeacher> createState() => _CreateTeacherState();
}

class _CreateTeacherState extends State<CreateTeacher> {
  final key = GlobalKey<FormState>();
  final teacherId = TextEditingController();
  final tFname = TextEditingController();
  final tLname = TextEditingController();

  List<Teacher> allTeachers = [];
  void _addTeachers(Teacher teacher) {
    setState(() {
      allTeachers.add(teacher);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
            child: Column(
              children: [
                TextFormField(
                  controller: tFname,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: tLname,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                ),
                const SizedBox(
                  height: 15,
                  width: double.infinity,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    int id = Random().nextInt(100);
                    if (key.currentState!.validate()) {
                      Teacher teacher = Teacher(
                        teacherId: id,
                        fName: tFname.text,
                        lName: tLname.text,
                      );
                      _addTeachers(teacher);
                    }
                  },
                  child: const Text(
                    "Create Teacher",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.viewTeacher,
                        arguments: allTeachers);
                  },
                  child: const Text(
                    "View Teacher",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.createStudent,
                        arguments: allTeachers);
                  },
                  child: const Text(
                    "Create Students",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
