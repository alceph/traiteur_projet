import 'package:flutter/material.dart';
import 'views/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traiteur Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: const Locale('fr' , 'Fr'),
      debugShowCheckedModeBanner: true,
      home: const HomeScreen(),
    );
  }
}

