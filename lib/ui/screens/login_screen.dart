import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/login_bg.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Ingresar"),
            ),
          ),
        ],
      ),
    );
  }
}
