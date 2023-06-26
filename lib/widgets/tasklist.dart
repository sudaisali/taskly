import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/screens/previewtask.dart';

import '../screens/tasks.dart';

class tasklisttile extends StatelessWidget {
  final String? title;
  final String? date;

  const tasklisttile({required this.title, required this.date, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFFFFF), Color(0xFFEDF3FF)],
          ),
        ),
        child: ListTile(
          trailing: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Previewtask()),
              );
            },
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff4942E4),
            ),
          ),
          title: Text(
            title!,
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            date!,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
