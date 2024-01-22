import 'package:flutter/material.dart';

class EnterYourCode extends StatelessWidget {
  const EnterYourCode({Key? key});

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
                      'Verification',
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
                    'Enter your Code',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 20), // Abstand hinzugefügt
                  Text(
                    'Please type the code we sent to',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFA7AFB7),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SmsCodeTextField(),
                  SmsCodeTextField(),
                  SmsCodeTextField(),
                  SmsCodeTextField(),
                ],
              ),
              SizedBox(height: 20), // Abstand hinzugefügt
              const Center(
                child: Text(
                  'Resend code (30)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFA7AFB7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Center(
                child: Text(
                  'Resend Link',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5ED5A8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5ED5A8),
                  fixedSize: const Size(400, 60),
                ),
                child: const Text(
                  'Continue',
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

class SmsCodeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0, // Du kannst die Breite nach Bedarf anpassen
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
