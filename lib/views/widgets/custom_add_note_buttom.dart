import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(customHint: 'Title'),
        ],
      ),
    );
  }
}

