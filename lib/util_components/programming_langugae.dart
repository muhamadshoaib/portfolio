import 'package:flutter/material.dart';

class ProgrammingLanguage extends StatelessWidget {
  final String langugage;
  final double value;
  const ProgrammingLanguage(
      {super.key, required this.langugage, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TweenAnimationBuilder(
        curve: Curves.easeInOut,
        tween: Tween<double>(begin: 0, end: value),
        duration: const Duration(seconds: 2),
        builder: (context, double value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              langugage,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            LinearProgressIndicator(
              value: value,
              color: Theme.of(context).primaryColorDark,
              backgroundColor: Theme.of(context).shadowColor,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: Duration(seconds: 2),
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: Theme.of(context).shadowColor,
                  backgroundColor: Theme.of(context).primaryColorDark,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.0 / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TweenAnimationBuilder(
        curve: Curves.easeInOut,
        tween: Tween<double>(begin: 0, end: percentage),
        duration: Duration(seconds: 2),
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(height: 10 / 2),
            LinearProgressIndicator(
              value: value,
              color: Theme.of(context).primaryColorDark,
              backgroundColor: Theme.of(context).shadowColor,
            ),
          ],
        ),
      ),
    );
  }
}
