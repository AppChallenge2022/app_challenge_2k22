import 'package:app_challenge_2k22/api/installersCard.dart';
import 'package:app_challenge_2k22/api/planscard.dart';
import 'package:app_challenge_2k22/api/installersModel.dart';
import 'package:app_challenge_2k22/details/detailsInstallersPage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../base_models/appColors.dart';
import '../base_models/baseTexts.dart';

// Estrutura basica das requisições
BaseOptions options = new BaseOptions(
  baseUrl: "https://app-challenge-api.herokuapp.com",
  connectTimeout: 5000,
);

class ResultInstallers extends StatefulWidget {
  final String value;
  final String option;
  List<InstallersModel> installers = <InstallersModel>[];

  ResultInstallers({Key? key, required this.value, required this.option})
      : super(key: key);

  @override
  State<ResultInstallers> createState() => _ResultInstallersState();
}

class _ResultInstallersState extends State<ResultInstallers> {
  @override
  void initState() {
    super.initState();
    this.getInstallers();
  }

  // Métodos
  void navigate(e) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsInstallersPage(installers: e)));

  Future<void> getInstallers() async {
    List<InstallersModel> auxPlans =
    <InstallersModel>[]; // Recebe os valores da requisição

    // Realiza a requisição
    Response response = await Dio(options)
        .get("/installers");

    // Pesquisa seja válida
    if (response.statusCode == 200) {

      for (var item in response.data.toList()) {
        //print(item);
        auxPlans.add(new InstallersModel.fromMap(item)); // Varrendo o array da resposta

        setState(
                () => widget.installers = auxPlans); // Setando os valores no estado
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Instaladores",
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
                  if (widget.installers.length == 0)
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
                      children: widget.installers
                          .map((e) =>
                          InstallersCardWidget(onTap: () => navigate(e), installers: e))
                          .toList(),
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
