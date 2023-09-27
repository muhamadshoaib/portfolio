import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  final String heading;
  final Widget mainChild;
  double? maxWidth;
  BackgroundCard(
      {super.key,
      required this.heading,
      required this.mainChild,
      this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: maxWidth ?? double.infinity,
            ),
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: mainChild,
          ),
        ],
      ),
    );
  }
}
