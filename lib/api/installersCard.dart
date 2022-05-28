import 'package:app_challenge_2k22/api/installersModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../base_models/appColors.dart';
import '../base_models/baseTexts.dart';


class InstallersCardWidget extends StatelessWidget {
  // Atributos
  final double borderRadius = 5;
  final double headerHeight = 85;
  final Color borderColor = AppColors.border;
  final Color headerColor = AppColors.darkBlue;
  final Color backColor = AppColors.white;
  final VoidCallback onTap;
  InstallersModel installers;

  InstallersCardWidget({
    Key? key,
    required this.installers,
    required this.onTap,
  }) : super(key: key);

  // Métodos
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: headerHeight,
                decoration: BoxDecoration(
                  color: headerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, right: 2),
                  child: Column(
                    children: [
                      Text(installers.id.toString(), style: AppTextStyles.bodybold18),

                      if (installers.rating != null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Icon(
                              CupertinoIcons.star_fill,
                              size: 12,
                              color: AppColors.white,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: Text(
                                installers.rating.toString(),
                                style: AppTextStyles.bodyWhite,
                              ),
                            ),
                          ],
                        )
                      else
                        SizedBox(width: MediaQuery.of(context).size.width,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.money_dollar,
                        size: 18,
                        color: AppColors.black,
                      ),
                      Flexible(
                        child: Text(
                          installers.price_per_km.toString(),
                          style: AppTextStyles.heading15,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        installers.name,
                        style: AppTextStyles.heading,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
