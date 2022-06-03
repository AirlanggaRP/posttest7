import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/controller/ssControl.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/home.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Awal(),
    );
  }
}

class Awal extends StatelessWidget {

  final ssControl ss = Get.put(ssControl());
  @override
  Widget build(BuildContext context) {
    ss.start();
    return Scaffold(
      body: 
        Container(
          color: Colors.black54,
          child: Center(
              child: Image.asset(
              "assets/gmx.png",
              scale: 10,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),
    );
  }
}