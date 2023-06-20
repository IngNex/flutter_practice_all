import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_practice/providers/counter_provider.dart';
import 'package:flutter_practice_all/projects/provider_practice/screens/pages/page_1.dart';
import 'package:flutter_practice_all/projects/provider_practice/screens/pages/page_2.dart';
import 'package:flutter_practice_all/projects/provider_practice/screens/pages/page_3.dart';
import 'package:provider/provider.dart';

class HomeProviderPract extends StatefulWidget {
  const HomeProviderPract({super.key});

  @override
  State<HomeProviderPract> createState() => _HomeProviderPractState();
}

class _HomeProviderPractState extends State<HomeProviderPract> {
  int _selectIndex = 0;
  final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Provider Practice'),
        actions: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
          ),
        ],
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
