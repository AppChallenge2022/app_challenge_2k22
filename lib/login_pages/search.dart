import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: [

            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Entre com a localização",
                labelStyle: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.blue,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
