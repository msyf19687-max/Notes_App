import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_buttom.dart';
import 'package:notse_app/views/widgets/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16,),
            CustomTextField(customHint: 'Title'),
            SizedBox(height: 24,),
            CustomTextField(customHint: 'Content', maxlines: 4),
            SizedBox(height: 60,),
            CustomButtom(),
            SizedBox(height: 70,),
          ],
        ),
      ),
    );
  }
}

