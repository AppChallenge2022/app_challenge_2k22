import 'package:app_challenge_2k22/api/installersModel.dart';
import 'package:app_challenge_2k22/api/plansModel.dart';
import 'package:app_challenge_2k22/details/detailWidget.dart';
import 'package:flutter/material.dart';

import '../base_models/appColors.dart';
import '../base_models/baseTexts.dart';

class DetailsInstallersPage extends StatelessWidget {

  // Atributos
  final double iconSize = 25;
  final Color iconColor = AppColors.secondary;
  final double boxShadowOpacity = 0.3;
  InstallersModel installers;

  DetailsInstallersPage({
    Key? key,
    required this.installers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instalador",
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
                            Text('${installers.name}', style: AppTextStyles.bodyBold20),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    DetailWidget(
                      title: 'Identificador',
                      content: 'Número = ${installers.id.toString()}',
                      icon: Icon(Icons.info_outline,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Avaliação',
                      content: '${installers.rating.toString()}',
                      icon: Icon(Icons.star,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Preço por Km',
                      content: 'RS${installers.price_per_km.toString()},00',
                      icon: Icon(Icons.attach_money_rounded,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Localização: Latitude',
                      content: 'Lat = ${installers.lat.toString()}',
                      icon: Icon(Icons.gps_fixed_outlined,
                          size: iconSize, color: iconColor),
                    ),

                    DetailWidget(
                      title: 'Localização: Longitude',
                      content: 'Long = ${installers.lng.toString()}',
                      icon: Icon(Icons.gps_fixed_outlined,
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