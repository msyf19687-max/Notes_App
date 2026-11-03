import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_notes_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child:const CustomNotesCard(),
      );
    });
  }
}