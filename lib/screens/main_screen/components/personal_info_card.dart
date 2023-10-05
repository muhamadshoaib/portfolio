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
              """Experienced software engineer transitioning to Software Engineering Manager. Proven track record in delivering innovative solutions and providing effective leadership. Strong technical skills, problem-solving abilities, and a commitment to excellence. Proficient in Google Cloud Platform, Docker, and PostgreSQL. Dedicated to aligning projects with strategic objectives, delivering results, and nurturing high-performing teams.
              """,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
