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
      //color: Color.fromRGBO(1, 168, 88, 1),
      child: ElevatedButton(
        child: Text(
            "Entrar",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){},
      ),

    );
  }
}
