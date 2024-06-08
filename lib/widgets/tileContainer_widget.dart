import 'package:flutter/material.dart';
import 'package:todoapp/models/todo_model.dart';
import 'package:todoapp/widgets/tileText.dart';

class TileContainerWidget extends StatelessWidget {
  TileContainerWidget({
    super.key,
    required this.deviceSize,
    required this.todo,
    required this.index,
  });

  final Size deviceSize;
  TodoModel todo;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(20),
      ),
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
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 36,
                ),
              ),
              IconButton(
                onPressed: () {},
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
