import 'package:hive_flutter/hive_flutter.dart';
import '../data/expense_data.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('expense_database');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
