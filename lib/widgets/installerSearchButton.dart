import 'package:app_challenge_2k22/api/resultInstallers.dart';
import 'package:app_challenge_2k22/home_page/home.dart';
import 'package:flutter/material.dart';

class InstallersButton extends StatelessWidget {
  const InstallersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

      ),
      width: 50,
      height: 50,
      //color: Color.fromRGBO(1, 168, 88, 1),
      child: ElevatedButton(
        child: Text(
          "Pesquisar Instaladores",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ResultInstallers(value: 'value', option: 'option',)));
        },
      ),

    );
  }
}
