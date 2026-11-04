import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_apbar.dart';
import 'package:notse_app/views/widgets/custom_textfield.dart';

class EditContentInCardPage extends StatelessWidget {
  const EditContentInCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomApbar(
            title: 'Edit Note', 
            icon: Icons.check
          ),
          SizedBox(height: 50,),
          CustomTextField(customHint: 'Title'),
          SizedBox(height: 24,),
          CustomTextField(customHint: 'Content' , maxlines: 4),
        ],
      ),
    );
  }
}