# Single-Text-Field [![pub package](https://img.shields.io/pub/v/single_text_field.svg)](https://pub.dartlang.org/packages/single_text_field)

A simple text field for Flutter. It is a simple text field with a label and a hint text. It also has a prefix text and a title. It also has a function to be called when the text field is tapped. and more...

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  single_text_field: ^0.0.1
```

In your library add the following import:

```dart
import 'package:single_text_field/single_text_field.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart

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

```

## Parameters

| Parameter     | Type                  | Description                                              |
| :------------ | :-------------------- | :------------------------------------------------------- |
| title         | String?               | The title of the text field                              |
| prefixText    | String?               | The prefix text of the text field                        |
| textInputType | TextInputType?        | The type of the text field                               |
| controller    | TextEditingController | The controller of the text field                         |
| onChanged     | Function              | The function to be called when the text field is changed |
| label         | String?               | The label of the text field                              |
| hint          | String?               | The hint of the text field                               |
| enable        | bool?                 | The enabled state of the text field                      |
| onTap         | Function?             | The function to be called when the text field is tapped  |

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

## Github Repository

[Single Text Field][githubrepo]

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

[tracker]: https://github.com/shubham0809200/Single-Text-Field/issues
[githubrepo]: https://github.com/shubham0809200/Single-Text-Field
