import 'package:app_challenge_2k22/base_models/appColors.dart';
import 'package:app_challenge_2k22/widgets/installerSearchButton.dart';
import 'package:app_challenge_2k22/widgets/plansSearchButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: [

            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("images/icon.png", alignment: Alignment.center),
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    'Olá João Silva',
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "Entre com a cidade",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(33, 147, 176, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: Icon(
                  Icons.location_city,
                  color: Color.fromRGBO(33, 147, 176, 1),
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Entre com o Estado",
                labelStyle: const TextStyle(
                  color: Color.fromRGBO(33, 147, 176, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: const Icon(
                  Icons.flag,
                  color: Color.fromRGBO(33, 147, 176, 1),
                ),
              ),

            ),
            const SizedBox(
              height: 80,
            ),


            const SizedBox(
              child: PlansButton(),
            ),

            const SizedBox(
              height: 10,
            ),

            const SizedBox(
              child: InstallersButton()),
          ],
        ),
      ),
    );
  }
}
