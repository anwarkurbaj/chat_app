import 'package:flutter/material.dart';

class My_bottom extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  const My_bottom({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(style: BorderStyle.solid)
      ), 
      child: Center(
        child: Text(text,style: TextStyle(fontSize: 14,color: Colors.white,),),
      )
      
      
      ),
    );
  }
}
