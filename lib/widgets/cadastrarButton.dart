import 'package:app_challenge_2k22/login_pages/signUp.dart';
import 'package:flutter/material.dart';

class CadastrarButton extends StatelessWidget {
  const CadastrarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

      ),
      width: 50,
      height: 50,
      //color: Color.fromRGBO(82, 181, 152, 1),
      child: ElevatedButton(
        child: Text(
          "Cadastrar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUp()));

        },
      ),

    );
  }
}
