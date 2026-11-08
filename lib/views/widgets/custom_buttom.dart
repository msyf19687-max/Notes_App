import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap , this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
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
        child: Center(
          child: isLoading ?
           SizedBox(
            height : 24,
            width : 24,
             child: const CircularProgressIndicator(
              color : Colors.black,
             ),
           ) :  
           const Text('Add' , style: TextStyle(
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