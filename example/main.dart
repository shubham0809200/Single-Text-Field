import 'package:flutter/material.dart';
import 'package:single_text_field/src/single_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drop Down Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SingleTextField(),
    );
  }
}

class SingleTextField extends StatefulWidget {
  const SingleTextField({super.key});

  @override
  SingleTextFieldState createState() => SingleTextFieldState();
}

class SingleTextFieldState extends State<SingleTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drop Down Menu'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                SingleAnswer(
                  title: 'First Name',
                  controller: TextEditingController(),
                  onChanged: ((value) {}),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleAnswer(
                  title: 'Last Name',
                  controller: TextEditingController(),
                  onChanged: ((value) {}),
                  onTap: () {},
                ),
              ]),
        ));
  }
}
