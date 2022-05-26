import 'package:app_challenge_2k22/widgets/button.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

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
                    color: Color.fromRGBO(1, 168, 88, 1)),
                textAlign: TextAlign.center),

            const SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(1, 168, 88, 1),
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
                  color: Color.fromRGBO(1, 168, 88, 1),
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
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => ResetPassword(),
                  //   ),
                  // );
                },
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    color: Color.fromRGBO(1, 168, 88, 1),),),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: button(),

              ),
          ],
        ),
      ),
    );
  }
}

