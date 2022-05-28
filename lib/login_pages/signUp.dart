import 'package:app_challenge_2k22/login_pages/login.dart';
import 'package:app_challenge_2k22/login_pages/signUpForm.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar",
          style: TextStyle(
              fontSize: 25
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 100),
            //   child: Text(
            //     "Criar conta",
            //     style: TextStyle(
            //       fontSize: 32,
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // const SizedBox(
            //   width: 5,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text('Já possui cadastro?'),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingUpForm(),
          ],
        ),
      ),
    );
  }
}