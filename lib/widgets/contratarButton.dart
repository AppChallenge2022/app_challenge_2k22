import 'package:app_challenge_2k22/base_models/baseTexts.dart';
import 'package:flutter/material.dart';
import '../home_page/home.dart';

class ContratarButton extends StatelessWidget {
  const ContratarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      width: 350,
      height: 50,

      child: ElevatedButton(
        child: Text(
          "Contratar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
          aviso(context);
        },
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
              builder: (BuildContext context) => HomePage()
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
                      'Uma mensagem via WhatsApp foi enviada para o instalador. Por favor, aguarde contato!',
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