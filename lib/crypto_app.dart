import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'theme/theme.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Криптовалюты',
      theme: classicTheme,
      routes: routes,
    );
  }
}