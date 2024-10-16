import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'PoliController.dart';
import 'PoliPage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PoliController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Data Poli with MockAPI',
      home: PoliPage(),
    );
  }
}
