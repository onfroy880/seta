// ignore_for_file: prefer_final_fields

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seta/screen/student/sthomescreen.dart';
import 'package:seta/screen/teacher/tehomescreen.dart';
import 'package:seta/tool/appbutton.dart';
import 'package:seta/tool/appcolor.dart';
import 'package:seta/tool/apptitle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

//
//
// Loading interface
//
//
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = true;
  void initiation() {
    if (isLoading == true) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () => {initiation()});

    return Container(
      child: isLoading
          ? Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTitle(
                    text: 'Seta',
                    color: AppColors.green_200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(
                      color: AppColors.green_200,
                    ),
                  )
                ],
              ),
            )
          : const MainPage(),
    );
  }
}

//
//
// Login interface
//
//
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  String email = '';
  bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(
          text: 'Seta Authentification',
          color: Colors.white,
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email obligatoire*';
                    } else if (isValidEmail(value) == false) {
                      return 'Email incorrect';
                    }
                    email = value;
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: AppColors.white_500,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: AppColors.green_200,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.green_200, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 234, 101, 101),
                            width: 2),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mot de passe obligatoire*';
                    } else if (value.length < 8) {
                      return 'Votre mot de passe doit contenir au minimum 8 caracteres*';
                    }
                    return null;
                  },
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      hintText: 'Mot de passe',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: AppColors.white_500,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: AppColors.green_200,
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.green_200),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 234, 101, 101),
                            width: 2),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 60,
                  width: 300,
                  child: GestureDetector(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (context) => const Center(
                                    child: CircularProgressIndicator(
                                  color: AppColors.green_200,
                                )));
                        if (email == 'student@gmail.com') {
                          Timer(
                              const Duration(seconds: 5),
                              () => {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const StudentHomeScreen())),
                                        (route) => false)
                                  });
                        } else {
                          Timer(
                              const Duration(seconds: 5),
                              () => {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const TeacherHomeScreen())),
                                        (route) => false)
                                  });
                        }
                      }
                    },
                    child: AppButton(
                      btnTxt: 'Se connecter',
                      widht: 200,
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
