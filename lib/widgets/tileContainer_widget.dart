import 'package:flutter/material.dart';
import 'package:todoapp/screens/edit_screen.dart';
import 'package:todoapp/widgets/tileText.dart';

import '../models/todo_model.dart';

class TileContainerWidget extends StatefulWidget {
  TileContainerWidget({
    super.key,
    required this.deviceSize,
    required this.todo,
    required this.index,
    this.deleteOnTap,
    this.editOnTap,
  });

  final Size deviceSize;
  TodoModel todo;
  final int index;
  void Function()? editOnTap;
  void Function()? deleteOnTap;

  @override
  State<TileContainerWidget> createState() => _TileContainerWidgetState();
}

class _TileContainerWidgetState extends State<TileContainerWidget> {
  @override
  Widget build(BuildContext context) {
    TodoModel todo = widget.todo;
    setState(() {
      todo = widget.todo;
    });

    return Container(
      width: widget.deviceSize.width,
      height: widget.deviceSize.height * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TileText(
                txt: todo.title,
                txtColor: Colors.white,
                txtSize: 28,
                txtFontWeight: FontWeight.w900,
              ),
              TileText(
                txt: todo.description,
                txtColor: Colors.white,
                txtSize: 16,
                txtFontWeight: FontWeight.w500,
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: widget.editOnTap,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 36,
                ),
              ),
              IconButton(
                onPressed: widget.deleteOnTap,
                icon: Icon(
                  Icons.delete,
                  color: Colors.redAccent.withOpacity(0.7),
                  size: 36,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
