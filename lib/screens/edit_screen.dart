import 'package:flutter/material.dart';
import 'package:todoapp/widgets/input_field_widget.dart';

import '../models/todo_model.dart';

class EditScreen extends StatefulWidget {
  TodoModel todo;
  final int index;
  EditScreen({
    Key? key,
    required this.todo,
    required this.index,
  }) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  var titleTxtController = TextEditingController();
  var descTxtController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    titleTxtController = TextEditingController(text: widget.todo.title);
    descTxtController = TextEditingController(text: widget.todo.description);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit : ${widget.todo.title}"),
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
                hintTxt: widget.todo.title,
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
                hintTxt: widget.todo.description,
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

                    updateTodo(
                        index: widget.index,
                        data: TodoModel(
                          title: titleTxtController.text,
                          description: descTxtController.text,
                        ));
                    setState(() {});
                    Navigator.pop(context);
                  }
                  setState(() {});
                },
                child: const Text(
                  "Update Todo",
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
