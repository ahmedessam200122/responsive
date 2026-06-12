import 'package:flutter/material.dart';
import 'package:responsive/features/auth/presentation/views/mobwid.dart';
import 'package:responsive/features/auth/presentation/views/webwid.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 2, 2),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  Mobwid();
            } else {
              return  Webwid();
            }
          },
        ),
      ),
    );
  }
}