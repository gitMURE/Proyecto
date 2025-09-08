import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/login/login_screen.dart';
import 'screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIDERPERU Almacenes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFB71C1C),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFB71C1C),
          secondary: const Color(0xFFD32F2F),
        ),
        fontFamily: 'Roboto',
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}
