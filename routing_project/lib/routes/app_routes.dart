
import 'package:routing_project/view/airthematic_view.dart';
import 'package:routing_project/view/container_view.dart';
import 'package:routing_project/view/dashboard_view.dart';
import 'package:routing_project/view/game_output.dart';
import 'package:routing_project/view/image_view.dart';
import 'package:routing_project/view/output_view.dart';
import 'package:routing_project/view/random_game.dart';

class AppRoutes {
   AppRoutes._(); // private constructor cannot use without its name

   static const String dashboardRoute = "/";
   static const String airthmaticRoute = "/airthmatic";
   static const String outputRoute = "/output";
   static const String games = "/games" ;
   static const String outputGame = "/outGame";
   static const String gameOver = "/output";
   static const String hello = "/hello";
   static const String imgg = "/img";

   static getApplicationRoute(){
    return {
      dashboardRoute : (context) => const DashboardView(),
      outputRoute : (context) => const OutputView(),
      airthmaticRoute : (context) => const AtithmeticView(),
      games : (context) => const RandomGame(),
      outputGame : (context) => const GameOutput(),
      hello : (context) => const ContainerView(),
      imgg : (context) => const ImageView(),
    };
   }
}