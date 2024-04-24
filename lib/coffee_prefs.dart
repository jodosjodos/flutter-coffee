import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoffeePres extends StatelessWidget {
  CoffeePres({
    super.key,
    required this.enabled,
  });
  final bool enabled;
  var strength = 0;
  var sugars = 0;
  void increaseStrengths() {
    print("increase sugar");
  
  }

  void increaseSugars() {
    print("increase sugar");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            Text(strength.toString()),
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            FilledButton(
                onPressed: increaseStrengths,
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                child: const Text("+"))
          ],
        ),
        Row(children: [
          const Text("Sugars: "),
          Text(sugars.toString()),
          Image.asset(
            "assets/img/sugar_cube.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          FilledButton(
              onPressed: increaseSugars,
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              child: const Text("+"))
        ])
      ],
    );
  }
}
