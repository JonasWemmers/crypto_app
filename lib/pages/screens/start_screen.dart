import 'package:crypto_app/pages/onboarding/onboarding_1.dart';
import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Verzögerung von 3 Sekunden
    Future.delayed(const Duration(seconds: 3), () {
      // Navigation zur nächsten Seite nach der Verzögerung
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Onboarding_1()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              '/Users/jonaswemmers/Documents/crypto_app/assets/img/Background_onboarding.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '/Users/jonaswemmers/Documents/crypto_app/assets/img/Logo.png',
                width: 200,
                height: 200,
              ),
              // Weitere Widgets können hier hinzugefügt werden
            ],
          ),
        ),
      ),
    );
  }
}