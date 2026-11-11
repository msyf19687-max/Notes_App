import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notse_app/cubits/add_note_to_cubit/add_note_to_cubit.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
        radius: 36,
      backgroundColor: Colors.white,
      child : CircleAvatar(
      radius: 32,
      backgroundColor: color,
    ) 
    )
    :CircleAvatar(
      radius: 32,
      backgroundColor: color,
    );
  }
}
class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  @override
  List<Color> colors = 
  [
    Colors.cyan,
    Colors.purpleAccent,
    Colors.cyanAccent,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.grey,
    Colors.teal,
  ];
  int curintIndex = 0;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection : Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index )
      {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: (){
              curintIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = colors[index];
              setState(() {
                
              });
            },
            child: ColorsItem(
              color : colors[index],
              isActive: curintIndex == index,
            ),
          ),
        );
      }
     ),
    );
  }
}