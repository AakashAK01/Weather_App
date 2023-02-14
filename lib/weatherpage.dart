import 'dart:async';
import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:auto_routers/api_dio.dart';
import 'package:auto_routers/bloc/weather_data_bloc.dart';
//import 'package:auto_routers/apidata.dart';
import 'package:auto_routers/conditiondata.dart';
import 'package:auto_routers/freezz/dataaa/condition.dart';
import 'package:auto_routers/freezz/dataaa/current.dart';
import 'package:auto_routers/freezz/dataaa/dataaa.dart';
import 'package:auto_routers/homepage.dart';
//import 'package:auto_routers/locationdata.dart';
//import 'package:auto_routers/weatherdata.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import 'freezz/dataaa/location.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class WeatherPage extends StatefulWidget implements AutoRouteWrapper {
  final String value;
  WeatherPage({Key? key, required this.value}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherDataBloc(),
      child: this,
    );
  }
}

class _WeatherPageState extends State<WeatherPage> {
  Dataaa curr = Dataaa();
  //= Dataaa(
  //     location: Location(
  //         name: "name",
  //         region: "region",
  //         country: "country",
  //         lat: 0.0,
  //         lon: 0.0,
  //         tzId: "tz_i",
  //         localtime: "localtime",
  //         localtimeEpoch: 0),
  //     current: Current(
  //         lastUpdatedEpoch: 0,
  //         lastUpdated: "last_updated",
  //         tempC: 0,
  //         tempF: 0.0,
  //         isDay: 0,
  //         windMph: 0.0,
  //         windKph: 0.0,
  //         windDegree: 0,
  //         windDir: "wind_dir",
  //         pressureMb: 0,
  //         pressureIn: 0.0,
  //         precipMm: 0,
  //         precipIn: 0,
  //         humidity: 0,
  //         cloud: 0,
  //         feelslikeC: 0.0,
  //         feelslikeF: 0.0,
  //         visKm: 0,
  //         visMiles: 0,
  //         uv: 0,
  //         gustMph: 0.0,
  //         gustKph: 0.0,
  //         condition: Condition(text: "text", icon: "0", code: 0)));
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

    BlocProvider.of<WeatherDataBloc>(context)
        .add(GetWeatherData(city: widget.value)); //doubt 1
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Weather"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.router.pushNamed("/yes");
              },
              icon: Icon(Icons.replay))
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: Icon(Icons.home),
        ),
      ),
      body: BlocBuilder<WeatherDataBloc, WeatherDataState>(
        builder: (context, state) {
          if (state is WeatherDataError) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
            );
          }

          if (state is WeatherDataLoaded) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue.shade400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "${state.currData.location?.name}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "${state.currData.current?.tempC}\u00B0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "${state.currData.current?.feelslikeC}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      // ListTile(
                      //   // ignore: deprecated_member_use
                      //   leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                      //   title: Text("Temperature"),
                      //   trailing: Text(
                      //     "${state.currData.current?.tempC}\u00B0",
                      //     // temp != null ? temp.toString() + "\u00B0" : "loading",
                      //   ),
                      // ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.cloud),
                        title: Text("Weather"),
                        trailing: Text(
                          "${state.currData.current?.condition?.text}\u00B0",
                          // description != null ? description.toString() : "loading"),
                        ),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.sun),
                        title: Text("Humidity"),
                        trailing: Text(
                          "${state.currData.current?.humidity}\u00B0",
                          //humidity != null ? humidity.toString() : "loading"),
                        ),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.wind),
                        title: Text("Wind Speed"),
                        trailing: Text(
                          "${state.currData.current?.gustMph}\u00B0",
                          // windSpeed != null ? windSpeed.toString() : "loading"
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            );
          }

          return (Text(""));
        },
      ),
    );
  }
}
