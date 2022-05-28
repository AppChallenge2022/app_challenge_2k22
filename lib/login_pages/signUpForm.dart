import 'package:app_challenge_2k22/login_pages/login.dart';
import 'package:flutter/material.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({Key? key}) : super(key: key);

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputFormName('Primeiro Nome'),
        buildInputFormName('Ultimo Nome'),
        buildInputFormEmail('E-mail'),
        buildInputFormNumber('Telefone'),
        buildInputFormPassword('Senha'),
        buildInputFormPassword('Confirmar Senha'),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 40,
          width: 140,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
            child: const Text(
              'Confirmar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding buildInputFormName(String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 40),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.green),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Padding buildInputFormEmail(String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 40),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.green),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Padding buildInputFormNumber(String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 40),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.green),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Padding buildInputFormPassword(String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 40),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.green),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
