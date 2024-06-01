import 'package:flutter/material.dart';
import 'package:todoapp/widgets/input_field_widget.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titleTxtController = TextEditingController();
  var descTxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create A Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputFieldWidget(
              titleTxtController: titleTxtController,
              hintTxt: 'Title',
            ),
            const SizedBox(
              height: 50,
            ),
            InputFieldWidget(
              titleTxtController: descTxtController,
              hintTxt: 'Description',
              maxLine: 6,
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll<Color>(Colors.purpleAccent),
              ),
              onPressed: () {},
              child: Text(
                "Create",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
