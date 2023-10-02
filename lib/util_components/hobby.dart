import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Hobby extends StatelessWidget {
  final String hobby;
  final dynamic icon;
  final void Function()? onTap;
  const Hobby({super.key, required this.hobby, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).shadowColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                spreadRadius: 5,
              ),
            ],
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            hobby,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
