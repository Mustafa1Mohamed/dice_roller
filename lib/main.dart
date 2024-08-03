import 'package:dice_roller/rolldice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dice_model.dart'; 

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DiceModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: RollDice(),
        ),
      ),
    ),
  );
}
