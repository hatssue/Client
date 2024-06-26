import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'managers/custom_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CustomRouter.router,
      title: "Flutter GoRouter Example",
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go('/sampleView');
                },
                child: Text("샘플 화면으로 이동")
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/calendarSample');
                },
                child: Text("캘린더 샘플 화면으로 이동")
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/calendarView');
                },
                child: Text("날짜 선택 화면으로 이동")
            ),
          ],
        )
      ),
    );
  }
}
