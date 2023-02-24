import 'package:flutter/material.dart';
import 'counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ChangeNotifier'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Column(
          children: [
            Column(
              children: [
                Text(
                    'Your value is ${context.watch<CounterProvider>().getCounter()}'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 200),
                  child: FloatingActionButton(
                    onPressed: () =>
                        context.read<CounterProvider>().increment(),
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 200),
                  child: FloatingActionButton(
                    onPressed: () =>
                        context.read<CounterProvider>().decrement(),
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.minimize),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
