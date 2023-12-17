import 'package:flutter/material.dart';

import '../../model/student.dart';

class DisplayStudent extends StatelessWidget {
  const DisplayStudent({Key? key, required this.listStudents})
      : super(key: key);

  final List<Student> listStudents;

  @override
  Widget build(BuildContext context) {
    return listStudents.isNotEmpty
        ? ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listStudents.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 80,
                width: double.infinity,
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '${listStudents.elementAt(index).fName!}'
                      ' ${listStudents.elementAt(index).lName!}'
                      ' \n ${listStudents.elementAt(index).teacher!}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            })
        : const Text("Empty");
  }
}
