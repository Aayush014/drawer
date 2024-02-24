import 'package:flutter/material.dart';

class DrawerTwo extends StatefulWidget {
  const DrawerTwo({super.key});

  @override
  State<DrawerTwo> createState() => _DrawerTwoState();
}

class _DrawerTwoState extends State<DrawerTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        width: 350,
        child: Column(
          children: [
            SizedBox(
              height: 340,
              width: 350,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.pinkAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          child: FlutterLogo(),
                        ),
                        SizedBox(width: 15),
                        CircleAvatar(
                          child: FlutterLogo(),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 70,
                      child: FlutterLogo(size: 100,),
                    ),
                    Text(
                      'Aayush Patel',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'admin@gmail.com',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Custom Drawer',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              child: const Icon(
                Icons.arrow_back_rounded,
                size: 28,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
