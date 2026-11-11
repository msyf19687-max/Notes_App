import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 36,
      backgroundColor: Colors.blue,
    );
  }
}
class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index )
      {
        return const ColorsItem();
      }
     ),
    );
  }
}