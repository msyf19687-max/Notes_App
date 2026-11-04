import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:55,
      decoration : BoxDecoration(
       color : Colors.lightBlue,
       borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text('Add' , style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
         ),
        ),
      ),
    );
  }
}