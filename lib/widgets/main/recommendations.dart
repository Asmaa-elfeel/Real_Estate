import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(20),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(recommendation.source!,
                style: Theme.of(context).textTheme.bodySmall),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5 / 2),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
