import 'package:designs_and_animations_app/src/pages/animations_page.dart';
// import 'package:designs_and_animations_app/src/pages/headers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diseños App",
      home: AnimationsPage(),
    );
  }
}
