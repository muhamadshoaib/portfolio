import 'package:flutter/material.dart';

class CardWithNumbers extends StatelessWidget {
  final String heading, subheading;
  const CardWithNumbers(
      {super.key, required this.heading, required this.subheading});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.only(
          left: 5.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        constraints: const BoxConstraints(
          minWidth: 80.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              subheading,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
