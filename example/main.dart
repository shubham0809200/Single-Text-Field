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
      title: 'Single Text Field Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SingleTextFieldExample(),
    );
  }
}

class SingleTextFieldExample extends StatefulWidget {
  const SingleTextFieldExample({super.key});

  @override
  SingleTextFieldExampleState createState() => SingleTextFieldExampleState();
}

class SingleTextFieldExampleState extends State<SingleTextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Single Text Field Example'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                SingleTextField(
                  title: 'First Name',
                  controller: TextEditingController(),
                  onChanged: ((value) {}),
                  onTap: () {},
                ),
                const SizedBox(height: 8),
                const SingleTextField(), // Default
                const SizedBox(height: 8),
                SingleTextField(
                  title: 'Last Name',
                  controller: TextEditingController(),
                  onChanged: ((value) {}),
                  onTap: () {},
                ),
              ]),
        ));
  }
}
