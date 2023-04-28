// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:seta/screen/teacher/tecoursescreen.dart';
import 'package:seta/tool/appcolor.dart';
import 'package:seta/tool/apptext.dart';
import 'package:seta/tool/apptitle.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabControllers = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(
          text: 'Seta',
          color: Colors.white,
          size: 20,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.apps_rounded)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  controller: tabControllers,
                  labelColor: AppColors.black_200,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  enableFeedback: true,
                  tabs: const [
                    Tab(
                      text: 'Cours programmes',
                    ),
                    Tab(
                      text: 'Cours effectues',
                    ),
                    Tab(
                      text: 'Cours manques',
                    ),
                  ]),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 146,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            child: TabBarView(
              controller: tabControllers,
              children: [
                ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 84,
                            margin: const EdgeInsets.only(bottom: 5),
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 221, 220, 220),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_rounded,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    AppText(
                                      text:
                                          'Vous avez cours le 1$index Avril 205$index',
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                AppText(
                                  text:
                                      'Avec les etudiants de la ${index + 1}e annees,',
                                  color:
                                      const Color.fromARGB(255, 103, 103, 103),
                                ),
                                AppText(
                                  text: 'Dans la salle no ${index + 1 * 2}',
                                  color:
                                      const Color.fromARGB(255, 103, 103, 103),
                                )
                              ],
                            )),
                      );
                    }),
                ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 84,
                          margin: const EdgeInsets.only(bottom: 5),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 220, 220),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer_off_rounded,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AppText(
                                    text:
                                        'Cours fait le 1$index Avril 205$index',
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              AppText(
                                text:
                                    'Avec les etudiants de la ${index + 1}e annees,',
                                color: const Color.fromARGB(255, 103, 103, 103),
                              ),
                              AppText(
                                text: 'Dans la salle no ${index + 1 * 2}',
                                color: const Color.fromARGB(255, 103, 103, 103),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 84,
                          margin: const EdgeInsets.only(bottom: 5),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 220, 220),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.call_missed_rounded,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AppText(
                                    text:
                                        'Cours manque le 1$index Avril 205$index',
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              AppText(
                                text:
                                    'Avec les etudiants de la ${index + 1}e annees,',
                                color: const Color.fromARGB(255, 103, 103, 103),
                              ),
                              AppText(
                                text: 'Dans la salle no ${index + 1 * 2}',
                                color: const Color.fromARGB(255, 103, 103, 103),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TeacherCoursScreen()));
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
