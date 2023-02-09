import 'package:flutter/material.dart';
import 'package:alvinwatner/features/home/views/pages/home_page.dart';
import 'package:alvinwatner/routes/routes.dart';
import 'package:alvinwatner/routes/transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        return FadeRoute(page: routes[settings.name]!, settings: settings);
      },
      home: const HomePage(),
    );
  }
}
