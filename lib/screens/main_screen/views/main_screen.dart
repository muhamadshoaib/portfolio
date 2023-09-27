import 'package:flutter/material.dart';
import 'package:portfolio/components/background_card.dart';
import 'package:portfolio/components/side_bar.dart';
import 'package:portfolio/screens/main_screen/components/personal_info_card.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Wrap(
        spacing: 20.0,
        runSpacing: 20.0,
        children: [
          PersonalInformationCard(),
          BackgroundCard(
            heading: 'Experience',
            mainChild: Container(
                child: Text(
              'Hellop Woasdasdasd asdas das das da sd as d asd as d asd as da sd as d asd rld',
              style: Theme.of(context).textTheme.bodySmall,
            )),
          ),
          // BackgroundCard(
          //   heading: 'Experience',
          //   mainChild: Container(child: Text('Hellop World')),
          // ),
        ],
      ),
    );
  }
}
