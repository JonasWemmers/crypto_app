import 'package:flutter/material.dart';

class RegisterFinal extends StatelessWidget {
  const RegisterFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              '/Users/jonaswemmers/Documents/crypto_app/assets/img/Successfull_Registration.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '/Users/jonaswemmers/Documents/crypto_app/assets/img/regist_final_avatar.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Text(
                    'Your account has been successfully created!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  print('Test');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFF5ED5A8),
                  fixedSize: const Size(350, 60),
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 16, // Passe die Schriftgröße nach Bedarf an
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
