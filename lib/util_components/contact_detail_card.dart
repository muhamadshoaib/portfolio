import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactDetail extends StatelessWidget {
  final String detail;
  final dynamic icon;
  final void Function()? onTap;
  const ContactDetail(
      {super.key, required this.detail, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).shadowColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              padding: const EdgeInsets.all(5.0),
              child: icon is String
                  ? SvgPicture.asset(
                      icon,
                      color: Theme.of(context).iconTheme.color!,
                      width: 25.0,
                    )
                  : (icon is IconData)
                      ? Icon(icon)
                      : const SizedBox.shrink(),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: Text(
                detail,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
