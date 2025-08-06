
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: const Color.fromARGB(255, 216, 218, 226),
      side: const BorderSide(color: TColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: Color.fromARGB(255, 97, 0, 0), fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: TColors.light,
      side: const BorderSide(color: TColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );
}

// /* -- Light & Dark Outlined Button Themes -- */
// class TOutlinedButtonTheme {
//   TOutlinedButtonTheme._(); //To avoid creating instances

//   /* -- Light Theme -- */
//   static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       elevation: 0,
//       foregroundColor: TColors.dark,
//       side: const BorderSide(color: TColors.borderPrimary),
//       textStyle: const TextStyle(
//           fontSize: 16, color: TColors.black, fontWeight: FontWeight.w600),
//       padding: const EdgeInsets.symmetric(
//           vertical: TSizes.buttonHeight, horizontal: 20),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
//     ),
//   );

//   /* -- Dark Theme -- */
//   static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       foregroundColor: TColors.light,
//       side: const BorderSide(color: TColors.borderPrimary),
//       textStyle: const TextStyle(
//           fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
//       padding: const EdgeInsets.symmetric(
//           vertical: TSizes.buttonHeight, horizontal: 20),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
//     ),
//   );
// }
