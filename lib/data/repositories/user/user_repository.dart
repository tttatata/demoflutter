import 'package:app/exceptions/firebase_exceptions.dart';
import 'package:app/exceptions/format_exceptions.dart';
import 'package:app/exceptions/platform_exceptions.dart';
import 'package:app/models/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

// class UserRepository extends GetxController {
//   static UserRepository get instance => Get.find();
//   //váiables
//   final FirebaseFirestore _db = FirebaseFirestore.instance;

//   Future<void> saveUserRecord(UserModel user) async {
//     try {
//       await _db.collection("Users").doc(user.id).set(user.toJson());
//     } on FirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on FormatException catch (_) {
//       throw const TFormatException();
//     } on PlatformException catch (e) {
//       throw TPlatformException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again';
//     }
//   }
// }
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw Exception('Lỗi Firestore: ${e.message}');
    } catch (e) {
      throw Exception('Không thể lưu dữ liệu người dùng: $e');
    }
  }
}
