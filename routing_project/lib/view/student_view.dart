import 'package:flutter/material.dart';
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
            ? ListView.builder(
                itemCount: student.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                        '${student[index].fname!} ${student[index].address!}'),
                    subtitle: Text(student[index].address!),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete))
                      ],
                    ),
                  );
                })
            : const Center(
                child: Text("No data found"),
              ));
  }
}
