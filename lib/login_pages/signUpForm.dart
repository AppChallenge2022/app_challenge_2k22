import 'package:app_challenge_2k22/login_pages/login.dart';
import 'package:flutter/material.dart';
import '../base_models/baseTexts.dart';

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
        buildInputFormName('Último Nome'),
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
              aviso(context);
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
          hintStyle: const TextStyle(color: Color.fromRGBO(33, 147, 176, 1)),
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
          hintStyle: const TextStyle(color: Color.fromRGBO(33, 147, 176, 1)),
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
          hintStyle: const TextStyle(color: Color.fromRGBO(33, 147, 176, 1)),
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
          hintStyle: const TextStyle(color: Color.fromRGBO(33, 147, 176, 1)),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}

void aviso (BuildContext context){

  var alertDialog = AlertDialog(
    title: Text("Uma mensagem foi enviada com sucesso"),

  );

  showDialog(
      context: context,
      builder: (BuildContext context){

        Future.delayed(Duration(seconds: 2), () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (BuildContext context) => Login()
          )
          );
        });

        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          insetAnimationDuration: Duration(seconds: 1),
          child: Container(
            height: 200.0,
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'Cadastro Realizado com Sucesso!',
                      style: AppTextStyles.heading15
                  ),
                ],
              ),
            ),
          ),
        );
      }
  );
}
