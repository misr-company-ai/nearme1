import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'theme/app_theme.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const NearMeApp());
}

class NearMeApp extends StatelessWidget {
  const NearMeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NearMe',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const LoginScreen(),
    );
  }
}
