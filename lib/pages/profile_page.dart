import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String userName;
  final String userId;
  const Profile({super.key, required this.userName, required this.userId});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'Profile Screen ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.userName),
            Text(widget.userId),
            Text(widget.userName),
            Text(widget.userId),
          ],
        ),
      ),
    );
  }
}
