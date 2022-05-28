import 'package:flutter/material.dart';

import 'login.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar Senha",
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              // child: Text(
              //   "Recuperar senha",
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontWeight: FontWeight.w700,
              //   ),
              // ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text(
                    'Já possui cadastro?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text(
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
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 10),
              child: Text(
                'Entre com o email associado a conta.',
                style: TextStyle(
                  // fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 50, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  icon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                ),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text(
                    'Enviar E-mail',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                height: 40,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 10),
              child: Text(
                "Entre com o código:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: OTPField(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: OTPField(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: OTPField(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: OTPField(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'Se não recebeu o codigo?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Reenviar',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: SizedBox(
                height: 40,
                width: 250,
                // child: RoundedLoadingButton(
                //   controller: _btnController,
                //   onPressed: () {
                //     Future.delayed(
                //       const Duration(seconds: 2),
                //           () {
                //         _btnController.success();
                //       },
                //     );
                //     Navigator.of(context).push(
                //       MaterialPageRoute(
                //         builder: (context) => NewPassword(),
                //       ),
                //     );
                //   },
                //   child: const Text(
                //     'Confirmar',
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //       fontSize: 20,
                //     ),
                //   ),
                //   color: Colors.blue,
                //   borderRadius: 10,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPField extends StatelessWidget {
  const OTPField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        hintText: '0',
      ),
    );
  }
}