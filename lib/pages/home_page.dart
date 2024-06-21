import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation_project/project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text('Home Screen', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profileRouteName,pathParameters: {
                      'username':'Ajay Rana',
                    });
              },
              child: const Text('Profile Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: const Text('Contact Us Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.aboutRouteName);
              },
              child: const Text('About Screen'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
