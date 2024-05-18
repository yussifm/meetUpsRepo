import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tileText.dart';

class TileContainerWidget extends StatelessWidget {
  const TileContainerWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TileText(
                txt: "Title",
                txtColor: Colors.white,
                txtSize: 28,
                txtFontWeight: FontWeight.w900,
              ),
              TileText(
                txt: "Description",
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
