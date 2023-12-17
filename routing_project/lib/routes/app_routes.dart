import 'package:routing_project/view/airthematic_view.dart';
import 'package:routing_project/view/container_view.dart';
import 'package:routing_project/view/dashboard_view.dart';
import 'package:routing_project/view/date_and_time.dart';
import 'package:routing_project/view/expanded_flexible_view.dart';
import 'package:routing_project/view/game_output.dart';
import 'package:routing_project/view/grid_view_view.dart';
import 'package:routing_project/view/image_view.dart';
import 'package:routing_project/view/output_view.dart';
import 'package:routing_project/view/random_game.dart';
import 'package:routing_project/view/rows_and_columns_view.dart';
import 'package:routing_project/view/splash_screen_view.dart';
import 'package:routing_project/view/student_details.dart';
import 'package:routing_project/view/student_view.dart';

class AppRoutes {
  AppRoutes._(); // private constructor cannot use without its name

  static const String dashboardRoute = "/";
  static const String airthmaticRoute = "/airthmatic";
  static const String outputRoute = "/output";
  static const String games = "/games";
  static const String outputGame = "/outGame";
  static const String gameOver = "/output";
  static const String hello = "/hello";
  static const String imgg = "/img";
  static const String expanded = "/expanded";
  static const String rowcol = "/rowcol";
  static const String student = "/student";
  static const String studentv = "/studentv";
  static const String grid = "/grid";
  static const String splashScreen = "/splashScreen";
  static const String dTime = "/dTime";

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      airthmaticRoute: (context) => const AtithmeticView(),
      games: (context) => const RandomGame(),
      outputGame: (context) => const GameOutput(),
      hello: (context) => const ContainerView(),
      imgg: (context) => const ImageView(),
      expanded: (context) => const ExpandedFlexibleView(),
      rowcol: (context) => const RowsAndColumnView(),
      student: (context) => const StudentDetails(),
      studentv: (context) => const StudentView(),
      grid: (context) => const GridViewView(),
      splashScreen: (context) => const SplashScreenView(),
      dTime: (context) => const DateAndTime(),
    };
  }
}
