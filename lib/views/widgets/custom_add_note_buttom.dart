import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_state.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_to_cubit.dart';
import 'package:notse_app/views/widgets/add_info_to_card.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNoteState>(
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
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
               padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
               bottom : MediaQuery.of(context).viewInsets.bottom,),
              child: SingleChildScrollView(
                child: AddInfoToCard(),
              ),
            ),
          );
        },
      ),
    );
  }
}
