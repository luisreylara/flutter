import 'package:flutter/material.dart';
import 'package:si_no_lunes15/config/theme/app_theme.dart';
import 'package:si_no_lunes15/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 1).theme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ChatScreen(),
    );
  }
}
