import 'package:flutter/material.dart';
import 'package:portfolio/util_components/tags.dart';

class Project extends StatelessWidget {
  final String projectName;
  final Map<String, String> tasks;
  final Tag tag;
  const Project(
      {super.key,
      required this.projectName,
      required this.tasks,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      projectName.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Expanded(child: tag),
                ],
              ),
              const SizedBox(height: 10.0),
              ...List<Text>.generate(
                tasks.length,
                (index) => Text(
                  "${tasks.keys.toList()[index]} - ${tasks.values.toList()[index]}",
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
