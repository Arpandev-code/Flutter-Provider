import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/list_provider.dart';
import 'package:provider_test1/one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: VerticalPage(),
      ),
    );
  }
}
