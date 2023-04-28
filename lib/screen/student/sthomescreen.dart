import 'package:flutter/material.dart';
import 'package:seta/tool/apptext.dart';
import 'package:seta/tool/apptitle.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
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
        body: Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: ListView.builder(
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                            text: 'Avec Mr AKPONAN,',
                            color: const Color.fromARGB(255, 103, 103, 103),
                          ),
                          AppText(
                            text: 'Dans la salle no ${index + 1 * 2}',
                            color: const Color.fromARGB(255, 103, 103, 103),
                          )
                        ],
                      )),
                );
              }),
        ));
  }
}
