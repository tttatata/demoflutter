import 'package:app/app.dart';
import 'package:app/data/repositories/authentication/authentication_repository.dart';
import 'package:app/data/repositories/user/user_repository.dart';
import 'package:app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Đăng ký repository một lần duy nhất
  Get.put(AuthenticationRepository(), permanent: true);
  Get.put(UserRepository(), permanent: true);

  runApp(const App());
}
