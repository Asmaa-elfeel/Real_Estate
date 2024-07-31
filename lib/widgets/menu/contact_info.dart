import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        newMethod(
          title: 'Address',
          text: 'Station Street 5',
        ),
        newMethod(
          title: 'Country',
          text: 'Austria',
        ),
        newMethod(
          title: 'Email',
          text: 'elfeelasmaa66\n@gmail.com',
        ),
        newMethod(
          title: 'Mobile',
          text: '+2001212883756',
        ),
        newMethod(
          title: 'Website',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding newMethod({required String title, required String text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
