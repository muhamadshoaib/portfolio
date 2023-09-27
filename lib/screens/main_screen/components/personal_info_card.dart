import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/background_card.dart';

class PersonalInformationCard extends StatelessWidget {
  late double width;
  PersonalInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return BackgroundCard(
      heading: 'Personal Information',
      maxWidth: width / 4,
      mainChild: Column(
        children: [
          CircleAvatar(
            minRadius: 70.0,
            backgroundImage: AssetImage('assets/images/bg.jpeg'),
          ),
          Text(
            'Hellop Woasdasdasd asdas dasdas das das das d as d as ds ad as da sas das da sd as d asd as d asd as da sd as d asd rld',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
