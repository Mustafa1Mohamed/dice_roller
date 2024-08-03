import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'dice_model.dart'; // Update with the correct path to your DiceModel file

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DiceModel>(
      builder: (context, diceModel, child) {
        return Container(
          color: const Color(0xff599F67),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Click To Roll",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Sum is ${diceModel.result}",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    diceModel.activeDice1,
                    width: 100,
                    height: 100,
                  ),
                  SvgPicture.asset(
                    diceModel.activeDice2,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  diceModel.rollDice();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Text(
                    "Roll",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
