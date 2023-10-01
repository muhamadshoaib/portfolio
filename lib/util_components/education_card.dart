import 'package:flutter/material.dart';
import 'package:portfolio/util_components/tags.dart';

class Education extends StatelessWidget {
  final String duration, titleOfFormation, schoolName;
  final Tag tag;
  const Education({
    super.key,
    required this.duration,
    required this.titleOfFormation,
    required this.schoolName,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              duration,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.circle_outlined,
              size: 15.0,
            ),
          ),
          Expanded(
            flex: 7,
            child: RichText(
              text: TextSpan(
                text: titleOfFormation.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).primaryColorDark,
                      letterSpacing: 2.0,
                    ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' - ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: schoolName,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(child: tag),
          ),
        ],
      ),
    );
  }
}
