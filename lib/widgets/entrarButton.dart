import 'package:app_challenge_2k22/home_page/home.dart';
import 'package:flutter/material.dart';

class EntrarButton extends StatelessWidget {
  const EntrarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

      ),
      width: 50,
      height: 50,
      child: ElevatedButton(
        child: Text(
            "Entrar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),

    );
  }
}
