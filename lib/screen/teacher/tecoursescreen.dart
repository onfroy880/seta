import 'package:flutter/material.dart';
import 'package:seta/tool/apptitle.dart';

class TeacherCoursScreen extends StatefulWidget {
  const TeacherCoursScreen({super.key});

  @override
  State<TeacherCoursScreen> createState() => _TeacherCoursScreenState();
}

class _TeacherCoursScreenState extends State<TeacherCoursScreen> {
  final _formKey = GlobalKey<FormState>();

  var optionSalle = [
    'Salle A',
    'Salle B',
    'Salle C',
    'Salle D',
    'Salle E',
  ];
  late String currentSelectedValue = optionSalle[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(
          text: 'Nouveau cours',
          color: Colors.white,
          size: 20,
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showDialog(
                    context: context,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.green,
                      ),
                    ),
                  );
                }
              },
              icon: const Icon(Icons.save_rounded)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Date obligatoire*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Date',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Heure obligatoire*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Heure de debut',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Heure obligatoire*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Heure de fin',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Filiere obligatoire*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Filiere',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: DropdownButtonFormField(
                  value: currentSelectedValue,
                  items: optionSalle.map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      currentSelectedValue = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 2),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  maxLines: 10,
                  validator: (value) {
                    // descriptionRevenu = value.toString();
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                    fillColor: Colors.white70,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
