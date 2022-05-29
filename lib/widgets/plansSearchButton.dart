import 'package:flutter/material.dart';
import '../api/resultPlans.dart';

class PlansButton extends StatelessWidget {
  const PlansButton({Key? key}) : super(key: key);

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
          "Pesquisar Planos",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ResultPlans(value: 'value', option: 'option',)));
        },
      ),

    );
  }
}
