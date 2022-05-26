import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: [

            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: Icon(
                  Icons.email,
                  color: Colors.blue,
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
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                // suffixIcon: GestureDetector(
                //   child: Icon(
                //       _showPassword == false
                //           ? Icons.visibility_off
                //           : Icons.visibility,
                //       color: Colors.blue),
                //   onTap: () {
                //     setState(
                //           () {
                //         _showPassword = !_showPassword;
                //       },
                //     );
                //   },
                // ),
              ),
              //obscureText: _showPassword == false ? true : false,
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
                child: const Text('Esqueceu a senha?'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}

