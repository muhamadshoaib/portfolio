import 'package:flutter/material.dart';
import 'package:portfolio/util_components/background_card.dart';
import 'package:portfolio/util_components/programming_langugae.dart';

class ProgrammingLanguagesCard extends StatelessWidget {
  const ProgrammingLanguagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
      heading: "Software Skills",
      constraints: const BoxConstraints(minWidth: double.maxFinite),
      mainChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.spaceEvenly,
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 5.0,
            spacing: 5.0,
            children: const [
              ProgrammingLanguage(value: 0.9, langugage: 'Dart'),
              ProgrammingLanguage(value: 0.9, langugage: 'Flutter'),
              ProgrammingLanguage(value: 0.8, langugage: 'Python'),
              ProgrammingLanguage(value: 0.8, langugage: 'Flask'),
              ProgrammingLanguage(value: 0.7, langugage: 'GCP'),
              ProgrammingLanguage(value: 0.3, langugage: 'Go'),
              ProgrammingLanguage(value: 0.5, langugage: 'Design System'),
              ProgrammingLanguage(value: 0.5, langugage: 'Agile & Scrum'),
            ],
          ),
        ),
      ),
    );
  }
}
