import 'package:app_challenge_2k22/login_pages/reset_password.dart';
import 'package:app_challenge_2k22/widgets/cadastrarButton.dart';
import 'package:app_challenge_2k22/widgets/entrarButton.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("images/icon.png", alignment: Alignment.center),
            ),

            const SizedBox(
              height: 20,
            ),
            
            Text("Via Net",
                style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.green),
                textAlign: TextAlign.center),

            const SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(82, 181, 152, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(1, 168, 88, 1),
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: const Icon(
                  Icons.lock,
                  color: Color.fromRGBO(1, 168, 88, 1),
                ),
                suffixIcon: GestureDetector(
                  child: Icon(
                      _showPassword == false
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Color.fromRGBO(1, 168, 88, 1),),
                  onTap: () {
                    setState(
                          () {
                        _showPassword = !_showPassword;
                      },
                    );
                  },
                ),
              ),
              obscureText: _showPassword == false ? true : false,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  );
                },
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    color: Colors.green,),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: EntrarButton(),

              ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: CadastrarButton(),

            ),
          ],
        ),
      ),
    );
  }
}

