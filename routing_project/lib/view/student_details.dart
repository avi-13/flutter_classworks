import 'package:flutter/material.dart';
import 'package:routing_project/app/common/display_student.dart';
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
  final items = [
    const DropdownMenuItem(value: 'Kathmandu', child: Text("Kathmandu")),
    const DropdownMenuItem(value: 'Pokhara', child: Text("Pokhara")),
    const DropdownMenuItem(value: 'Gorkha', child: Text("Gorkha")),
  ];

  String? city;

  var selectedGender = "Male";

  List<Student> lstStudent = [];
  void _addStudentToList(Student student) {
    setState(() {
      lstStudent.add(student);
    });
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

                DropdownButtonFormField(
                  items: items,
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                  hint: const Text('Select City'),
                  decoration: const InputDecoration(
                    labelText: "Select a address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please Select a city';
                    }
                    return null;
                  },
                ),
                // TextDropdownFormField(
                //     controller: _dropdowncontroller, options: cities),

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
                          city: city,
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
                Expanded(
                  flex: 1,
                  child: DisplayStudent(
                    listStudents: lstStudent,
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
