import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'Home Screen ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Profile Screen')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('ContactUs Screen')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('About Screen')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Profile Screen')),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
