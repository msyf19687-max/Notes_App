import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
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
      ),
    );
  }
}