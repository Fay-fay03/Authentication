import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(buttontextcolor),
          backgroundColor: MaterialStateProperty.all<Color>(buttoncolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>
          (RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
        child: Text(text, style:
         const TextStyle(fontSize: normalTextFontSize,
         fontWeight: titleFontWeight
         ),),
      ),
    );
  }
}
