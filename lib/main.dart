import 'package:app/app.dart';
import 'package:app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
Future<void> main() async {


  //todo initiallize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
).then((FirebaseApp value) => Get.put(AuthenticationRepository)),
  runApp(const App());
}
