import 'package:flutter/material.dart';

class PedLoading extends StatelessWidget {
  const PedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}