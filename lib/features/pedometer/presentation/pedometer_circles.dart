import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  final String metric;
  double value;
  final int displayText;
  final int stepGoal;
  final int currStep;

  ProgressCircle(this.metric, this.value, this.displayText, this.currStep, this.stepGoal, {super.key});

  @override
  Widget build(BuildContext context) {
    value = currStep/stepGoal;
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    strokeCap: StrokeCap.round,
                    strokeWidth: 10,
                    value: value,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 35,),
                    Text(
                      currStep.toString()+"/"+stepGoal.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      displayText.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            metric,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
