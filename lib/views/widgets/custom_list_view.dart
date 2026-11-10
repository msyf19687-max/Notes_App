import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notse_app/models/note_model.dart';
import 'package:notse_app/views/edit_card_page.dart';
import 'package:notse_app/views/widgets/custom_notes_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditCardPage(),
                      ),
                    );
                  },
                  child:CustomNotesCard(notes: notes[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
