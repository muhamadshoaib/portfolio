import 'package:flutter/material.dart';
import 'package:portfolio/util_components/background_card.dart';
import 'package:portfolio/util_components/contact_detail.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactDetailsCard extends StatelessWidget {
  late double width;
  ContactDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return BackgroundCard(
      constraints: BoxConstraints(
        maxWidth: width / 5,
        minWidth: width / 5,
      ),
      mainChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ContactDetail(
              detail: "muhamad.shoaib@aol.com", icon: Icons.email_rounded),
          const ContactDetail(
            detail: "+92-306-7266771",
            icon: "assets/icons/whatsapp.svg",
          ),
          const ContactDetail(
              detail:
                  "House # P-10 B, Afshan Colony, Sargodha Road, Faisalabad, Pakistan",
              icon: Icons.location_on),
          ContactDetail(
            detail: "linkedin.com/in/mianshoaib/",
            icon: "assets/icons/linkedin.svg",
            onTap: () =>
                launchUrl(Uri.parse("https://www.linkedin.com/in/mianshoaib/")),
          ),
          ContactDetail(
            detail: "github.com/MuhamadShoaib",
            icon: "assets/icons/github.svg",
            onTap: () =>
                launchUrl(Uri.parse("https://github.com/MuhamadShoaib")),
          ),
        ],
      ),
    );
  }
}
