import 'package:softwarica_view/view/create_student.dart';
import 'package:softwarica_view/view/create_teacher.dart';
import 'package:softwarica_view/view/dashboard_view.dart';
import 'package:softwarica_view/view/student_details.dart';
import 'package:softwarica_view/view/teacher_details.dart';

class AppRoutes {
  AppRoutes._();

  static const String dash = "/";
  static const String createTeacher = "createTeacher";
  static const String viewTeacher = "viewTeacher";
  static const String createStudent = "createStudent";
  static const String viewStudents = "viewStudents";

  static allRoutes() {
    return {
      dash: (context) => const DashboardView(),
      createStudent: (context) => const CreateStudent(),
      createTeacher: (context) => const CreateTeacher(),
      viewStudents: (context) => const StudentDetails(),
      viewTeacher: (context) => const TeacherDetails(),
    };
  }
}
