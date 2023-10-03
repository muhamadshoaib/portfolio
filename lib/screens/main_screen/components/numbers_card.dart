import 'package:flutter/material.dart';
import 'package:portfolio/util_components/card_with_numbers.dart';

class NumbersCard extends StatelessWidget {
  late double width;
  NumbersCard({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CardWithNumbers(
            heading: "+20",
            subheading: "Projects",
          ),
          CardWithNumbers(
            heading: "+30",
            subheading: "Customers",
          ),
          CardWithNumbers(
            heading: "3 years",
            subheading: "Experience",
          ),
        ],
      ),
    );
  }
}
