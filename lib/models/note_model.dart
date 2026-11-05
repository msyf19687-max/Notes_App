import 'package:hive/hive.dart';
part 'note_model.g.dart'; // this is the generated file for this model class 

@HiveType(typeId: 0)// Just for this class , we are giving a type Id 0
class NoteModel extends HiveObject
{
 @HiveField(0) // we are giving a field Id to variable from zero, must be unique
 final String title;
 @HiveField(1)
 final String subtitle;
 @HiveField(2)
 final String date;
 @HiveField(3)
 final int color;

  NoteModel({
    required this.title, 
    required this.subtitle, 
    required this.date, 
    required this.color,
  });
}