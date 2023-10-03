import 'package:flutter/material.dart';
import 'package:portfolio/util_components/background_card.dart';

class PersonalInformationCard extends StatelessWidget {
  late double width, height;
  PersonalInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return BackgroundCard(
      mainChild: Column(
        children: [
          CircleAvatar(
            backgroundColor:
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
            radius: 85,
            child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/profile_pic.jpeg')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'MUHAMMAD SHOAIB',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Text(
            'SENIOR SOFTWARE ENGINEER',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).primaryColorDark,
                  letterSpacing: 2.0,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 100.0,
              ),
              child: const Divider(
                thickness: 3.0,
                endIndent: 10.0,
              ),
            ),
          ),
          Center(
            child: Text(
              """
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
              """,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
