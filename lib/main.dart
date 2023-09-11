// PRIMER CHALLENGE PARA PRACTICAR ANIMACIONES
// import 'package:designs_and_animations_app/src/challenges/animated_square_page.dart';

// APRENDIENDO A ANIMAR BARRAS DE PROGRESO CIRCULARES
import 'package:designs_and_animations_app/src/pages/circular_progress_page.dart';

// APRENDIENDO ANIMACIONES BÁSICAS
// import 'package:designs_and_animations_app/src/pages/animations_page.dart';

// APRENDIENDO CUSTOM PAINTER
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
      home: CircularProgressPage(),
    );
  }
}
