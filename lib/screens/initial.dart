import 'dart:ui';

import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('assets/arte-praia-lela.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text("Lelatrips",
                    style: TextStyle(
                        fontFamily: "Shadows",
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                              // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.white),
                          Shadow(
                              // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.white),
                          Shadow(
                              // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.white),
                          Shadow(
                              // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.white),
                        ])),
              ),
              OutlinedButton(
                onPressed: () {},
                style: const ButtonStyle(enableFeedback: false),
                child: const Text(
                  "Em breve!",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    );

    // return Container(

    //   child: Image.network(
    //     'assets/arte-praia-lela.jpg',
    //     fit: BoxFit.cover,
    //     height: double.infinity,
    //     width: double.infinity,
    //     alignment: Alignment.center,),
    // );
  }
}
