import 'package:flutter/material.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.only(top: 16, bottom: 16 , left : 16,),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Notes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
           ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0 , bottom: 16),
              child: Text('Build Your Career With Flutter With Sarwat Samy',  
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),),
            ),
            trailing : IconButton (
              padding: EdgeInsets.only(left: 16, bottom : 24,),
              onPressed: (){},              
             icon: Icon(Icons.delete,
             color: Colors.black,
             size: 30,
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18,),
            child: Text('May 20, 2026',  style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}