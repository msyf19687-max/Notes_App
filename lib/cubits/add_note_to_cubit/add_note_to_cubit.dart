import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_state.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());
}