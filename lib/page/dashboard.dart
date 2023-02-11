import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_portofolio/page/component/text_button.dart';
import 'package:website_portofolio/page/singlepage/articles.dart';
import 'package:website_portofolio/page/singlepage/contact.dart';
import 'package:website_portofolio/page/singlepage/project.dart';
import 'package:website_portofolio/page/singlepage/work.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    WorkPage(),
    ProjectPage(),
    ArticlesPage(),
    ContactPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 60),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 1000,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        width: 85,
                        height: 85,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/117131175?v=4'),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BadrulFLut',
                            style: GoogleFonts.rubik(
                                fontSize: 28, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            width: 35,
                            height: 5,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textButton('WORK', () => _onItemTapped(0)),
                                const SizedBox(
                                  width: 30,
                                ),
                                textButton(
                                  'PROJECT',
                                  () => _onItemTapped(1),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                textButton(
                                  'ARTICLES',
                                  () => _onItemTapped(2),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                textButton(
                                  'CONTACT',
                                  () => _onItemTapped(3),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 60),
                  width: double.infinity,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1000),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: _pages[_selectedIndex],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
