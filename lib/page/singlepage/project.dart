import 'package:flutter/material.dart';
import 'package:website_portofolio/page/component/container_copyright.dart';
import 'package:website_portofolio/page/component/container_profile.dart';
import 'package:website_portofolio/page/component/container_title.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          containerTitle('Project', 'Some of my spare time tinkering.'),
          const SizedBox(
            height: 50,
          ),
          containerProfile(
            'Program Enzy Boy',
            'A simple portfolio showcasing the different aspects of Enzy as a programmer.',
            'Logo Design',
            'Build Aplication',
            'Build Website',
            () {},
          ),
          containerProfile(
            'Program Enzy Boy',
            'A simple portfolio showcasing the different aspects of Enzy as a programmer.',
            'Logo Design',
            'Build Aplication',
            'Build Website',
            () {},
          ),
          containerProfile(
            'Program Enzy Boy',
            'A simple portfolio showcasing the different aspects of Enzy as a programmer.',
            'Logo Design',
            'Build Aplication',
            'Build Website',
            () {},
          ),
          containerCopyright()
        ],
      ),
    );
  }
}
