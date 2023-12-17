import 'package:flutter/material.dart';
import 'package:softwarica_view/model/student.dart';
import 'package:softwarica_view/routes/app_routes.dart';
import 'package:softwarica_view/view/data.dart';

class CreateStudent extends StatefulWidget {
  const CreateStudent({Key? key}) : super(key: key);

  @override
  State<CreateStudent> createState() => _CreateStudentState();
}

class _CreateStudentState extends State<CreateStudent> {
  final key = GlobalKey<FormState>();
  final studentId = TextEditingController();
  final sFname = TextEditingController();
  final sLname = TextEditingController();

  final List<DropdownMenuItem<String>> teachers = List.generate(
    Data.teachers.length,
    (index) => DropdownMenuItem(
      value: Data.teachers[index].toString(),
      child: Text(
        '${Data.teachers[index].fName!} ${Data.teachers[index].lName!}',
      ),
    ),
  );

  List<Student> allStudents = [];

  void _addStudents(Student student) {
    setState(() {
      allStudents.add(student);
    });
  }

  String? teacher;

  @override
  Widget build(BuildContext context) {
    // List<Teacher> teachers =
    // ModalRoute.of(context)!.settings.arguments as List<Teacher>;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
            child: Column(
              children: [
                TextFormField(
                  controller: sFname,
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
                  controller: sLname,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Last Name'),
                ),
                const SizedBox(
                  height: 15,
                ),
                // DropdownButtonFormField<int>(
                //   items: teacher,
                //   onChanged: (value) {
                //     setState(() {
                //       teacher = value as String?;
                //     });
                //   },
                //   decoration:
                //       const InputDecoration(border: OutlineInputBorder()),
                // ),
                const SizedBox(
                  height: 15,
                  width: double.infinity,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      Student student = Student(
                        fName: sFname.text,
                        lName: sLname.text,
                        teacher: teacher,
                      );
                      _addStudents(student);
                    }
                  },
                  child: const Text(
                    "Create Student",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.viewStudents,
                        arguments: allStudents);
                  },
                  child: const Text(
                    "View Student",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {},
                  child: const Text(
                    "Create Teacher",
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
