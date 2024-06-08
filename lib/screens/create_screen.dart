import 'package:flutter/material.dart';
import 'package:todoapp/models/todo_model.dart';
import 'package:todoapp/widgets/input_field_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InputFieldWidget(
                  titleTxtController: titleTxtController,
                  hintTxt: 'Title',
                  validator: (p0) {
                    if (p0 != null && p0.isEmpty) {
                      return "Please Enter Title";
                    } else {
                      return null;
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
                    if (p0 != null && p0.isEmpty) {
                      return "Please Enter Description";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.purpleAccent),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      createTodo(
                          todo: TodoModel(
                        title: titleTxtController.text,
                        description: descTxtController.text,
                      ));
                      setState(() {});

                      Navigator.pop(context);
                    }
                  },
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
        ),
      ),
    );
  }
}
