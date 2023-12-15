// Définition des constantes de configuration
import 'package:flutter/material.dart';

class Config {
  // Données de requête média et dimensions de l'écran
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // Initialisation de la largeur et de la hauteur de l'écran
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  // Getters pour la largeur et la hauteur de l'écran
  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  // Espacements prédéfinis
  static const spaceSmall = SizedBox(
    height: 25,
  );

  static final spaceMedium = SizedBox(
    height: screenHeight! * 0.05,
  );

  static final spaceBig = SizedBox(
    height: screenHeight! * 0.08,
  );

  // Bordures de champ de texte
  static const outlinedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  // Bordure de focus avec la couleur CE3162
  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Color(0xFFCE3162),
    ),
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  // Couleur primaire
  static const primaryColor = Color(0xFFCE3162);

}
