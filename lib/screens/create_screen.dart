
import 'package:flutter/material.dart';
import 'package:todoapp/widgets/input_field_widget.dart';

import '../models/todo_model.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titleTxtController = TextEditingController();
  var descTxtController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create A Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputFieldWidget(
                titleTxtController: titleTxtController,
                hintTxt: 'Title',
                validator: (p0) {
                  if (p0 != null && p0.isNotEmpty) {
                    return null;
                  } else {
                    return "Title can't be empty";
                  }
                },
              ),
              const SizedBox(
                height: 50,
              ),
              InputFieldWidget(
                titleTxtController: descTxtController,
                hintTxt: 'Description',
                maxLine: 6,
                validator: (p0) {
                  if (p0 != null && p0.isNotEmpty) {
                    return null;
                  } else {
                    return "Description can't be empty";
                  }
                },
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                      Colors.purpleAccent.shade100),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print(titleTxtController.text);
                    print(descTxtController.text);
                    todoList.add(TodoModel(
                      title: titleTxtController.text,
                      description: descTxtController.text,
                    ));
                    Navigator.pop(context);
                  }
                  setState(() {});
                },
                child: const Text(
                  "Create",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
