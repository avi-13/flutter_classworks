import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:routing_project/model/student.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _AtithmeticViewState();
}

class _AtithmeticViewState extends State<StudentDetails> {
  final key = GlobalKey<FormState>();
  final fName = TextEditingController();
  final lName = TextEditingController();
  final age = TextEditingController();
  final address = TextEditingController();
  final _dropdowncontroller =
      DropdownEditingController(value: "Please select a district");

  var cities = ["Kathmandu", "Pokhara", "Gorkha"];

  var selectedGender = "Male";

  List<Student> lstStudent = [];
  void _addStudentToList(Student student) {
    lstStudent.add(student);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  controller: fName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
                TextFormField(
                  controller: lName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                  ),
                ),
                const Text('Select Gender:'),
                ListTile(
                  title: const Text('Male'),
                  leading: Radio(
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Female'),
                  leading: Radio(
                    value: 'Female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Other'),
                  leading: Radio(
                    value: 'Other',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String;
                      });
                    },
                  ),
                ),
                TextFormField(
                  controller: age,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a value";
                    } else if (int.tryParse(value) == null) {
                      return "Cannot be alphabet";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Age',
                  ),
                ),
                TextDropdownFormField(
                    controller: _dropdowncontroller, options: cities),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        Student student = Student(
                          fname: fName.text,
                          lname: lName.text,
                          gender: selectedGender,
                          age: int.parse(age.text),
                          address: address.text,
                        );
                        _addStudentToList(student);
                        debugPrint(lstStudent.length.toString());
                        Navigator.pushNamed(context, '/studentv',
                            arguments: lstStudent);
                      }
                    },
                    child: const Text('Save Students'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/studentv",
                          arguments: lstStudent);
                    },
                    child: const Text('Display Students'),
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
