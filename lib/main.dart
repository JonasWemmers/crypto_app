import 'package:crypto_app/pages/screens/sign_up/enter_code.dart';
import 'package:crypto_app/pages/screens/sign_up/register_with_mobile.dart';
import 'package:crypto_app/pages/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EnterYourCode(),
    );
  }
}
