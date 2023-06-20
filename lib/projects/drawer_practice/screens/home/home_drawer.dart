import 'package:flutter/material.dart';

class HomeDrawerPract extends StatefulWidget {
  const HomeDrawerPract({super.key});

  @override
  State<HomeDrawerPract> createState() => _HomeDrawerPractState();
}

class _HomeDrawerPractState extends State<HomeDrawerPract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white38,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/90920253',
                ),
              ),
              const Text(
                'Michael Rodriguez',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[300],
                child: const Text('Home'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[300],
                child: const Text('Setting'),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.black87,
                child: const Text(
                  'Sing out',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
