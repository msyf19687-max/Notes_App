import 'package:flutter/material.dart';
import 'package:notse_app/views/widgets/custom_icon.dart';

class CustomApbar extends StatelessWidget {
  const CustomApbar({super.key , required this.title, required this.icon, this.ontap});
 final String title;
 final IconData icon;
 final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style: TextStyle(
          fontSize: 28,
        ),
       ),
       Spacer(),
       CustomIcon(
        icon: icon,
        ontap: ontap,
       ),
      ],
    );
  }
}

