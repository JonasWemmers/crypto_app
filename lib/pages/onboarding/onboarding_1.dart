import 'package:crypto_app/pages/onboarding/onboarding_2.dart';
import 'package:flutter/material.dart';


class Onboarding_1 extends StatelessWidget {
  const Onboarding_1({super.key});

  @override
  Widget build(BuildContext context) {
    bool secondStepperPointActive = false;

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
                '/Users/jonaswemmers/Documents/crypto_app/assets/img/Astro_Onboarding.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 40),
              const Text(
                'Trade anytime anywhere',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore the fascinating world of cryptocurrencies, learn more about innovative technologies like blockchain, and embark on your journey into the future of digital finance.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40),
              // Onboarding Stepper Points
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildStepperPoint(true),
                  _buildStepperPoint(secondStepperPointActive),
                  _buildStepperPoint(false),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Hier wird die Aktion hinzugefügt, um zur nächsten Seite zu wechseln
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const OnBoarding_2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: const Color(0xFF5ED5A8), // Schriftfarbe
                  fixedSize:
                      const Size(180, 60), // Festgelegte Größe des Buttons
                ),
                child: const Text('Weiter'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepperPoint(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? const Color.fromRGBO(119, 119, 119, 1)
            : const Color.fromRGBO(37, 46, 53, 1),
      ),
    );
  }
}