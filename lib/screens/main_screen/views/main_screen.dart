import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/components/contact_details_main_card.dart';
import 'package:portfolio/screens/main_screen/components/education_main_card.dart';
import 'package:portfolio/screens/main_screen/components/numbers_card.dart';
import 'package:portfolio/util_components/background_card.dart';
import 'package:portfolio/util_components/side_bar.dart';
import 'package:portfolio/screens/main_screen/components/experience_main_card.dart';
import 'package:portfolio/screens/main_screen/components/personal_info_card.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class MainScreen extends StatelessWidget {
  late double width;
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // We hide the appBar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: SideBar(),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: defaultPadding - 10.0,
          runSpacing: defaultPadding - 10.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PersonalInformationCard(),
                NumbersCard(),
                ContactDetailsCard(),
              ],
            ),
            Column(
              children: [
                ExperienceCard(),
                EducationCard(),
              ],
            ),
            BackgroundCard(
              heading: 'Software Skills',
              // maxWidth: width / 5,
              mainChild: Container(child: Text('Hello World')),
            ),
          ],
        ),
      ),
    );
  }
}
