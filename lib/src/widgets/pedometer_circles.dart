import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  final String metric;
  final double value;
  final int displayText;

  const ProgressCircle(this.metric, this.value, this.displayText);

  @override
  Widget build(BuildContext context) {
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
                    value: this.value,
                  ),
                ),
              ),
              Center(
                child: Text(
                  this.displayText.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            this.metric,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}