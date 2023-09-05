import 'package:designs_and_animations_app/src/widgets/headers_widget.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SquareHeader(),
    );
  }
}
