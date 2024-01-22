import 'package:flutter/material.dart';

class RegisterWithMobile extends StatelessWidget {
  const RegisterWithMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                '/Users/jonaswemmers/Documents/crypto_app/assets/img/Sign_In-Bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 60.0),
                child: Row(
                  children: [
                    Image.asset(
                      '/Users/jonaswemmers/Documents/crypto_app/assets/img/back_icon.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFA7AFB7),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50), // Abstand hinzugefügt
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register with mobile',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 20), // Abstand hinzugefügt
                  Text(
                    'Please type your number, then we\'ll send a verification code for authentication.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFA7AFB7),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(color: Color(0xFFA7AFB7)),
                  hintText: 'Enter your Code',
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5ED5A8),
                  fixedSize: const Size(400, 60),
                ),
                child: const Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
