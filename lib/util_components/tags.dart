import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;
  final Color textColor, spreadColor;
  const Tag({
    super.key,
    required this.tag,
    required this.textColor,
    required this.spreadColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: spreadColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Text(
        tag,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: textColor,
            ),
      ),
    );
  }
}
