import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Projects',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Responsive(
            desktop: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 3,
              childAspectoRatio: 0.75,
              itemBuilder: (content, index) =>
                  ProjectCard(project: demoProjects[index]),
            ),
            tablet: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectoRatio: 0.75,
              itemBuilder: (content, index) =>
                  ProjectCard(project: demoProjects[index]),
            ),
            mobileLarge: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 2,
              childAspectoRatio: 0.75,
              itemBuilder: (content, index) =>
                  ProjectCard(project: demoProjects[index]),
            ),
            mobile: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 1,
              childAspectoRatio: 0.75,
              itemBuilder: (content, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
          )
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectoRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectoRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }
}
