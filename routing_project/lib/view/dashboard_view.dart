import 'package:flutter/material.dart';
import 'package:routing_project/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, // source to
                        AppRoutes.airthmaticRoute); // destination
                  },
                  child: const Text("Airthmatic"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.hello,
                    );
                  },
                  child: const Text("HelloWorld"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.imgg,
                    );
                  },
                  child: const Text("Images"),
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, 
                AppRoutes.expanded);
              }, child: const Text("Expanded View"))
            ],
          ),
        ),
      ),
    );
  }
}
