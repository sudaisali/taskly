import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewtile extends StatelessWidget {
  final String? title,value;
  const Viewtile({
    required this.title,
    required this.value,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff2A2A2A)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            value!,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.black),
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
