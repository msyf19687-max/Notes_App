import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.customHint, 
    this.maxlines = 1, this.onSaved, 
    this.onChange});

  final String customHint;
  final int maxlines;
  final void Function(String?)? onSaved;
 final void Function(String?)? onChange;
  @override
  Widget build(BuildContext context) {

   return TextFormField(
    onChanged:onChange ,
    maxLines: maxlines,
    onSaved:onSaved,
    validator: (value){
      if(value == null || value.isEmpty){
        return 'This field is required';
      }
      return null;
    },
  style: const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  ),
  decoration: InputDecoration(
    hintText: customHint,
    hintStyle: TextStyle(
      color: Colors.lightBlue.shade400,
      fontSize: 16,
    ),
    filled: true,
    //fillColor: Colors.grey.shade50,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 18,
    ),

    // 1. الحالة العادية (Idle)
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.lightBlue,
        width: 1.5,
      ),
    ),

    // 2. حالة التركيز (Focused / متداس عليه)
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.lightBlue,
        width: 2.0,
      ),
    ),

    // 3. حالة الخطأ (Error)
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Color(0xFFDC3545),
        width: 1.5,
      ),
    ),

    // 4. حالة التركيز مع وجود خطأ (Focused Error)
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Color(0xFFDC3545),
        width: 2.0,
      ),
    ),

    // 5. حالة التعطيل (Disabled)
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: Colors.lightBlue.shade300,
        width: 1.0,
      ),
    ),
  ),
);
  }
}