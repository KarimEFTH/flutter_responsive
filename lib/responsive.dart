import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Responsive')),
      body: Column(
        children: [
          // -------------------------------
          // Exemple avec flutter_screenutil
          // Ici on utilise les extensions .w et .h
          // pour adapter automatiquement la largeur
          // et la hauteur selon la taille de l'écran
          // -------------------------------
          Container(
            width: 220.w, // largeur responsive avec screenutil
            height: 220.h, // hauteur responsive avec screenutil
            color: Colors.amber,
            child: Text(
              'Essaouira City',
              style: TextStyle(
                fontSize: 30.sp, // taille de texte responsive (screenutil)
                color: Colors.black,
              ),
            ),
          ),

          // -------------------------------
          // Exemple avec MediaQuery
          // Ici on calcule la hauteur/largeur en fonction
          // de la taille actuelle de l’écran.
          // Cela ne dépend pas d’une librairie externe.
          // -------------------------------
          SizedBox(
            height:
                MediaQuery.of(context).size.height /
                12, // hauteur relative (MediaQuery)
          ),
          Container(
            width:
                MediaQuery.of(context).size.height /
                5, // largeur relative (MediaQuery)
            height:
                MediaQuery.of(context).size.height /
                3, // hauteur relative (MediaQuery)
            color: Colors.blueAccent,
            child: Text(
              'Marrakech City',
              style: TextStyle(
                fontSize: 30.sp, // même avec MediaQuery on peut utiliser sp
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Methode 1 -> MediaQuery (intégré dans Flutter)
// Methode 2 -> flutter_screenutil (package externe pour la responsivité)
