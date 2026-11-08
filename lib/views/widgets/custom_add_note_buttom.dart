import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_state.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_to_cubit.dart';
import 'package:notse_app/views/widgets/add_info_to_card.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<NotesCubit, NoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Note Is Added Successfuly')),
              );
            }

            if (state is AddNoteFailure) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(child: AddInfoToCard()),
            );
          },
        ),
      ),
    );
  }
}
