// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   getlocation();
  // }

  // Future<void> getlocation() async {
    // ignore: unused_local_variable
  //   Future<Position> position =
  //     (await  Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low)) as Future<Position>;

  // }
  var locationMessage = "";
  void getCurrentlocation() async {
    // ignore: unused_local_variable
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    // ignore: avoid_print
    print(lastPosition);
    setState(() {
      locationMessage = "$position.latitude , $position.longitude";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getCurrentlocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
