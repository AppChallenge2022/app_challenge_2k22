import 'package:app_challenge_2k22/api/plansModel.dart';
import 'package:app_challenge_2k22/details/detailWidget.dart';
import 'package:flutter/material.dart';

import '../base_models/appColors.dart';
import '../base_models/baseTexts.dart';

class DetailsPlansPage extends StatelessWidget {

  // Atributos
  final double iconSize = 25;
  final Color iconColor = AppColors.secondary;
  final double boxShadowOpacity = 0.3;
  PlansModel plans;

  DetailsPlansPage({
    Key? key,
    required this.plans,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plano",
          style: TextStyle(
              fontSize: 25
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.darkBlue,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(boxShadowOpacity),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Column(
                          children: [
                            Text('${plans.isp}', style: AppTextStyles.bodyBold25),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    DetailWidget(
                      title: 'Identificador',
                      content: 'Número = ${plans.id.toString()}',
                      icon: Icon(Icons.info_outline,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Download Speed',
                      content: '${plans.download_speed.toString()} Mbps',
                      icon: Icon(Icons.download_rounded,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Upload Speed',
                      content: '${plans.upload_speed.toString()} Mbps',
                      icon: Icon(Icons.upload_rounded,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Valor Mensal',
                      content: 'RS = ${plans.price_per_month.toString()}0',
                      icon: Icon(Icons.attach_money_rounded,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Tipo de Internet',
                      content: plans.type_of_internet,
                      icon: Icon(Icons.perm_scan_wifi_sharp,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Descrição',
                      content: plans.description.toString(),
                      icon: Icon(Icons.description,
                          size: iconSize, color: iconColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(boxShadowOpacity),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }
}