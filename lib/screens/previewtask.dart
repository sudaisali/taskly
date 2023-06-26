import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/screens/tasks.dart';
import 'package:taskly/widgets/viewtile.dart';
class Previewtask extends StatelessWidget {
  const Previewtask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Tasks()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff4942E4),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text("Task Preview",
                        style: Theme.of(context).textTheme.displayLarge),
                    trailing: CircleAvatar(
                      backgroundColor: Color(0xffEDF3FF),
                      radius: 20,
                      child: Icon(
                        Icons.delete,
                        color: Color(0xff4942E4),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Viewtile(title: "Task", value: "Starting work out"),
                      Viewtile(title: "Type", value: "Personal project"),
                      Viewtile(title: "Priority", value: "Nice to have"),
                      Viewtile(title: "TimeFrame", value: "Week"),
                      Viewtile(title: "Description", value: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"),

                    ],
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
