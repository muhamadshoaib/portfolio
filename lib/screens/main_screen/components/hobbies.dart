import 'package:flutter/material.dart';
import 'package:portfolio/util_components/background_card.dart';
import 'package:portfolio/util_components/hobby.dart';

class HobbiesCard extends StatelessWidget {
  const HobbiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
      heading: "Leisure",
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
              Hobby(
                hobby: "Travel",
                icon: Icons.flight_rounded,
              ),
              Hobby(
                hobby: "Bike Riding",
                icon: Icons.sports_motorsports_rounded,
              ),
              Hobby(
                hobby: "Cricket",
                icon: Icons.sports_cricket_rounded,
              ),
              Hobby(
                hobby: "E-Games",
                icon: Icons.sports_esports_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
