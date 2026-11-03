import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_icon.dart';

class CustomApbar extends StatelessWidget {
  const CustomApbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',
        style: TextStyle(
          fontSize: 28,
        ),
       ),
       Spacer(),
       CustomIcon(),
      ],
    );
  }
}

