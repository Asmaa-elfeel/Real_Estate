import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'Projects',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 2),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '67+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildIconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    text: '67+',
                    label: 'Clients',
                  ),
                ),
                Expanded(
                  child: buildIconInfo(
                    context: context,
                    icon: Icons.location_on,
                    text: '139+',
                    label: 'Projects',
                  ),
                ),
                Expanded(
                  child: buildIconInfo(
                    context: context,
                    icon: Icons.public,
                    text: '30+',
                    label: 'Clients',
                  ),
                ),
                Expanded(
                  child: buildIconInfo(
                    context: context,
                    icon: Icons.star,
                    text: '67+',
                    label: 'Stars',
                  ),
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, size: 50.0),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(label, style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
