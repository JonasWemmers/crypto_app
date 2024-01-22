import 'package:flutter/material.dart';

class SignUpMobile extends StatelessWidget {
  const SignUpMobile({super.key});

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
                child: Image.asset(
                  '/Users/jonaswemmers/Documents/crypto_app/assets/img/exit_icon.png',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Sign In'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Sign Up'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your Password?',
                    style: TextStyle(color: Color(0xFF5ED5A8)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5ED5A8),
                  fixedSize: const Size(400, 60),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'or login with',
                    style: TextStyle(
                        color: Color(0xFF777777)), // Farbe hinzugefügt
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(190, 50),
                        textStyle: const TextStyle(fontSize: 16)),
                    icon: Image.asset(
                      '/Users/jonaswemmers/Documents/crypto_app/assets/img/fb_logo.png', // Ersetze 'Pfad_zum_Bild/DeinLogo.png' durch den Pfad zu deinem Bild
                      width:
                          30, // Passe die Breite des Bildes an deine Anforderungen an
                      height:
                          30, // Passe die Höhe des Bildes an deine Anforderungen an
                    ),
                    label: const Text('Facebook'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(190, 50),
                        textStyle: const TextStyle(fontSize: 16)),
                    icon: Image.asset(
                      '/Users/jonaswemmers/Documents/crypto_app/assets/img/google_logo.png', // Ersetze 'Pfad_zum_Bild/DeinLogo.png' durch den Pfad zu deinem Bild
                      width:
                          30, // Passe die Breite des Bildes an deine Anforderungen an
                      height:
                          30, // Passe die Höhe des Bildes an deine Anforderungen an
                    ),
                    label: const Text('Google'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
