import 'package:crypto_app/pages/onboarding/onboarding_3.dart';
import 'package:flutter/material.dart';



class OnBoarding_2 extends StatelessWidget {
  const OnBoarding_2({super.key});

  @override
  Widget build(BuildContext context) {
    bool secondStepperPointActive = true;

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
                '/Users/jonaswemmers/Documents/crypto_app/assets/img/Astro2_Onboarding.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 40),
              const Text(
                'Save and invest at the same time',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore the vast world of cryptocurrency, where you can save and invest simultaneously. Discover innovative technologies like blockchain, embark on a journey into the future of digital finance, and make secure investments in this dynamic landscape.',
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
                  _buildStepperPoint(false),
                  _buildStepperPoint(secondStepperPointActive),
                  _buildStepperPoint(false),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Hier wird die Aktion hinzugefügt, um zur nächsten Seite zu wechseln
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const OnBoarding_3()),
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