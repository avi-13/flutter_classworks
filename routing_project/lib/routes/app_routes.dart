
import 'package:routing_project/view/airthematic_view.dart';
import 'package:routing_project/view/dashboard_view.dart';
import 'package:routing_project/view/output_view.dart';

class AppRoutes {
   AppRoutes._(); // private constructor cannot use without its name

   static const String dashboardRoute = "/";
   static const String airthmaticRoute = "/airthmatic";
   static const String outputRoute = "/output";

   static getApplicationRoute(){
    return {
      dashboardRoute : (context) => const DashboardView(),
      outputRoute : (context) => const OutputView(),
      airthmaticRoute : (context) => const AtithmeticView(),
    };
   }
}