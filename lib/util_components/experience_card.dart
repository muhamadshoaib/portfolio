import 'package:flutter/material.dart';
import 'package:portfolio/util_components/tags.dart';

class Experience extends StatelessWidget {
  final String duration, jobTitle, companyName;
  final Map<String, String> projects;
  final Tag tag;
  const Experience(
      {super.key,
      required this.duration,
      required this.jobTitle,
      required this.companyName,
      required this.projects,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              duration,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.circle_outlined,
                size: 15.0,
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 8,
                    child: Text(
                      '${jobTitle.toUpperCase()} - $companyName',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Expanded(child: tag),
                ],
              ),
              const SizedBox(height: 10.0),
              ...List<Text>.generate(
                projects.length,
                (index) => Text(
                  "${projects.keys.toList()[index]} - ${projects.values.toList()[index]}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
