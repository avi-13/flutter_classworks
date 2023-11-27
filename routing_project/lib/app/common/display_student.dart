import 'package:flutter/material.dart';

import '../../model/student.dart';

class DisplayStudent extends StatelessWidget {
  const DisplayStudent({Key? key, required this.listStudents})
      : super(key: key);

  final List<Student> listStudents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listStudents.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
                '${listStudents.elementAt(index).fname!} ${listStudents.elementAt(index).lname!}'),
            subtitle: Text(listStudents.elementAt(index).address!),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      listStudents.removeAt(index);
                    },
                    icon: const Icon(Icons.delete)),
              ],
            ),
          );
        });
  }
}
