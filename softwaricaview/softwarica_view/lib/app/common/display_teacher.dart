import 'package:flutter/material.dart';
import 'package:softwarica_view/model/teacher.dart';

class DisplayTeacher extends StatelessWidget {
  const DisplayTeacher({Key? key, required this.listTeacher}) : super(key: key);

  final List<Teacher> listTeacher;

  @override
  Widget build(BuildContext context) {
    return listTeacher.isNotEmpty
        ? ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listTeacher.length,
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
                      '${listTeacher.elementAt(index).teacherId}\n,${listTeacher.elementAt(index).fName!} ${listTeacher.elementAt(index).lName!}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            })
        : const Text("Empty");
  }
}
