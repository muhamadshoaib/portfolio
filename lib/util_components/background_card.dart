import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  final String? heading;
  final Widget mainChild;
  final BoxConstraints? constraints;
  double? maxWidth, maxHeight;
  BackgroundCard({
    super.key,
    this.heading,
    required this.mainChild,
    this.maxWidth,
    this.maxHeight,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        constraints: constraints ??
            BoxConstraints(
              maxWidth: maxWidth ?? double.infinity,
              maxHeight: maxHeight ?? double.infinity,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (heading != null)
              Text(
                heading!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            mainChild,
          ],
        ),
      ),
    );
  }
}
