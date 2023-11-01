import 'package:flutter/material.dart';

class Stats {
  String _title = '';
  double _value = 0.0;
  int _goal = 0;

  Stats(this._title, this._value, this._goal);

  double getProgress() {
    return (this._value / this._goal) * 100;
  }

  String get title => _title;

  double get value => _value;

  int get goal => _goal;

  double get progress => (this._value / this._goal);
}