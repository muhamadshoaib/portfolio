import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/util_components/background_card.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
      mainChild: TextButton(
        onPressed: () {},
        style: Theme.of(context).textButtonTheme.style,
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: SvgPicture.asset("assets/icons/download.svg"),
            )
          ],
        ),
      ),
    );
  }
}
