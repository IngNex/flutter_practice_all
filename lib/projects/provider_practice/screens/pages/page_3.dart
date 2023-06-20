import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_practice/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    return Center(
      child: ElevatedButton(
        onPressed: () {
          return context.read<CounterProvider>().increment();
        },
        child: Text('increment ${counterProvider.counter.toString()}'),
      ),
    );
  }
}
