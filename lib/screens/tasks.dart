import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/screens/addtask.dart';
import 'package:taskly/screens/home.dart';
import 'package:taskly/widgets/tasklist.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
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
                            builder: (context) => const HomeScreen()));
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
                    title: Text("Tasks",
                        style: Theme.of(context).textTheme.displayLarge),
                    subtitle: Text(
                      " 6 Tasks",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddTask()));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff4942E4),
                        radius: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      tasklisttile(
                        title: "School Meeting ",
                        date: "Monday",
                      ),
                      tasklisttile(
                        title: "Dinner with Friend",
                        date: "Wednesday",
                      ),
                      tasklisttile(
                        title: "Submit Task and Assignment",
                        date: "3 day",
                      ),
                      tasklisttile(
                        title: "Course Math Exam",
                        date: "Tomorrow",
                      ),
                      tasklisttile(
                        title: "Ecommerce Meeting",
                        date: "Thursday",
                      ),
                      tasklisttile(
                        title: "SEO Assignment",
                        date: "Friday",
                      ),
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
