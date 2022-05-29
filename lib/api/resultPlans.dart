import 'package:app_challenge_2k22/base_models/appColors.dart';
import 'package:app_challenge_2k22/details/detailsPlansPage.dart';
import 'package:app_challenge_2k22/api/planscard.dart';
import 'package:app_challenge_2k22/api/plansModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../base_models/baseTexts.dart';

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

  // Métodos
  void navigate(e) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsPlansPage(plans: e)));

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
        auxPlans.add(new PlansModel.fromMap(item)); // Varrendo o array da resposta

        setState(
                () => widget.plans = auxPlans); // Setando os valores no estado
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Planos",
            style: TextStyle(
                fontSize: 25
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors.darkBlue,
        ),
        body: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  if (widget.plans.length == 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 50),
                      child: Column(
                        children: [
                          Text(
                            'Sinto Muito!',
                            style: AppTextStyles.heading40,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Nenhum resultado para sua pesquisa.',
                            style: AppTextStyles.body20,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(Icons.sentiment_dissatisfied,
                              size: 50, color: Colors.green),
                        ],
                      ),
                    ),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      children: widget.plans
                          .map((e) =>
                          CardWidget(onTap: () => navigate(e), plans: e))
                          .toList(),
                      //onTap: () => navigate(e),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
