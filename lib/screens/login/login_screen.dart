import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../routes/app_routes.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B0000), // respaldo por si falla el gradiente
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8B0000),
              Color(0xFFB71C1C),
              Color(0xFFD32F2F),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Image.asset(
                      'assets/images/logo_siderperu_blanco.png',
                      height: 90,
                    ),
                    const SizedBox(height: 24),

                    // Glassmorphic Card
                    Container(
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.95),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Hero(
                            tag: "login-illustration",
                            child: Image.asset(
                              'assets/images/bg_login.png',
                              height: 220,
                            ),
                          ),
                          const SizedBox(height: 24),

                          Text(
                            "¡Bienvenido!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              letterSpacing: -0.5,
                            ),
                          ),
                          const SizedBox(height: 12),

                          Text(
                            "Organiza, controla y optimiza tus\nalmacenes con confianza.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              height: 1.6,
                            ),
                          ),
                          const SizedBox(height: 36),

                          // Botón
                          LoginButton(
                            text: "Iniciar Sesión",
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, AppRoutes.home);
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Pie de página
                    Text(
                      "© 2025 SIDERPERU\nTodos los derechos reservados",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
