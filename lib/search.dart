import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:auto_routers/main.gr.dart';

import 'weatherpage.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'homepage.dart';

//import 'package:auto_route/auto_route.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String citi = 'Chennai';
  late StreamSubscription subscription;
  Future<void> checkConnectivity() async {
    var result = await Connectivity().checkConnectivity();
  }

  @override
  void initState() {
    checkConnectivity();
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Connectivity changed to ${result.name}"),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Weather App',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              //Entering city name container
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) => {
                  setState(() {
                    citi = value;
                  })
                },
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Search'),
                  onPressed: () {
                    //WeatherPage(value: city);
                    context.router.push(WeatherRoute(value: citi));
                  },
                )),
            Row(
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'For HomePage',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
