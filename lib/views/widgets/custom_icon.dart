import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key , required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        //shape: BoxShape.circle,
        borderRadius:BorderRadius.circular(16),
      ),
      child : Center(
        child: Icon(
          icon,
        ),
     ),
    );
  }
}