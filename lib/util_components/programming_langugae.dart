import 'package:flutter/material.dart';

class Hobby extends StatelessWidget {
  final String langugage;
  final int value;
  const Hobby({super.key, required this.langugage, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).shadowColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.all(5.0),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            langugage,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
