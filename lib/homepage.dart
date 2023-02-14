import 'dart:async';

import 'package:auto_routers/search.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome To WeatherApp",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("To Search"),
                onPressed: () {
                  context.router.pushNamed("/login");
                },
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
