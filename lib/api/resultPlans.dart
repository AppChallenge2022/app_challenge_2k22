import 'package:app_challenge_2k22/api/plansModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Estrutura basica das requisições
BaseOptions options = new BaseOptions(
  baseUrl: "https://app-challenge-api.herokuapp.com",
  connectTimeout: 5000,
);

class ResultPlans extends StatefulWidget {

  final String value;
  final String option;
  List<PlansModel> plans = <PlansModel>[];

  ResultPlans({Key? key, required this.value, required this.option})
      : super(key: key);
  @override
  _ResultPlansState createState() => _ResultPlansState();
}

class _ResultPlansState extends State<ResultPlans> {
  @override
  void initState() {
    super.initState();
    this.getPlans();
  }

  Future<void> getPlans() async {
    List<PlansModel> auxPlans =
    <PlansModel>[]; // Recebe os valores da requisição

    // Realiza a requisição
    Response response = await Dio(options)
        .get("/plans");

    //print(response);
    // Pesquisa seja válida
    if (response.statusCode == 200) {

      for (var item in response.data.toList()) {
        //print(item);
        auxPlans.add(new PlansModel.fromMap(item));
      }
        setState(
                () => widget.plans = auxPlans);
      // Varrendo o array da resposta
        // Setando os valores no estado
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.only(top: 5),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  if(widget.plans.length != 0)
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text.rich(TextSpan(
                          text: 'Total de planos encontrados',
                          children: [
                            TextSpan(
                                text: '${widget.plans.length}',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                        ]
                      ),
                    )
                ],
              ),
            ),
          ),
        )
    );
  }
}
