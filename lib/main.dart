import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/attendance_provider.dart';
import 'screens/attendance_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AttendanceProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance App',

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: const AttendanceScreen(),
    );
  }
}