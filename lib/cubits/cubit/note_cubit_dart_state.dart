part of 'note_cubit_dart_cubit.dart';

sealed class NoteState {}

final class NoteInitial extends NoteState {}
final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState 
{
  List <NoteModel> notes;
  NoteSuccess({required this.notes});
}
final class NoteFailure extends NoteState 
{
  final String errorMessage;

  NoteFailure({required this.errorMessage});
}
