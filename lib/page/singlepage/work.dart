import 'package:flutter/material.dart';
import 'package:website_portofolio/page/component/container_copyright.dart';
import 'package:website_portofolio/page/component/container_profile.dart';
import 'package:website_portofolio/page/component/container_title.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          containerTitle(
              'Work', 'Client projects and other professional work.'),
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
          containerCopyright()
        ],
      ),
    );
  }
}
