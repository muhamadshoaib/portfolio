import 'package:flutter/material.dart';
import 'package:portfolio/util_components/background_card.dart';
import 'package:portfolio/util_components/education_card.dart';
import 'package:portfolio/util_components/tags.dart';

// ignore: must_be_immutable
class EducationCard extends StatelessWidget {
  late double width, height;
  EducationCard({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return BackgroundCard(
      heading: 'Education',
      maxWidth: width / 2,
      mainChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Education(
                duration: 'AUG/2016 - JUL/2020',
                titleOfFormation: 'BSCS',
                schoolName:
                    'FAST (National University of Computer and Emerging Sciences)',
                tag: Tag(
                  tag: '4 Years',
                  textColor: Theme.of(context).primaryColorDark,
                  spreadColor: Theme.of(context).shadowColor,
                ),
              ),
              Education(
                duration: '2014 - 2016',
                titleOfFormation: 'Higher Secondary School Certificate (FSC)',
                schoolName: 'Punjab College Faisabalad',
                tag: Tag(
                  tag: '2 Years',
                  textColor: Theme.of(context).primaryColorDark,
                  spreadColor: Theme.of(context).shadowColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
