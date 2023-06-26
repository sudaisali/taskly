import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/screens/tasks.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var selectedValue;
  var priorityValue;
  var timeframeValue;

  List<String> typeList = ['Work', 'personal project', 'self'];
  List<String> priority = ['Needs Done', 'Nice to Have', 'Nice Idea'];
  List<String> timeframe = ['None', 'Today', '3 Day', 'Week' , 'Fornight','Mo'
      'nth', '90 Days' , 'Year'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedValue = typeList[0];
    priorityValue = priority[0];
    timeframeValue = timeframe[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Tasks()));
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
                child: Text("New Tasks",
                    style: Theme.of(context).textTheme.displayLarge),
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Task",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2A2A2A)),
                        ),
                        Card(
                          color: Colors.white,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Text",
                              contentPadding: EdgeInsets.only(left: 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xff4942E4),
                                  )),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xffE9E9E9),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "  Type",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2A2A2A)),
                        ),
                        Card(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField(
                              hint: Text('Select Type'),
                              isExpanded: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff4942E4),
                                    )),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xffE9E9E9),
                                    )),
                              ),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                              items: typeList.map((String? newval) {
                                return DropdownMenuItem(
                                  value: newval,
                                  child: Text(newval!),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "  Priority",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2A2A2A)),
                        ),
                        Card(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField(
                              hint: Text('Select Type'),
                              isExpanded: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff4942E4),
                                    )),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xffE9E9E9),
                                    )),
                              ),
                              value: priorityValue,
                              onChanged: (value) {
                                setState(() {
                                  priorityValue = value!;
                                });
                              },
                              items: priority.map((String? newval) {
                                return DropdownMenuItem(
                                  value: newval,
                                  child: Text(newval!),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "  TimeFrame",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2A2A2A)),
                        ),
                        Card(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField(
                              hint: Text('Select Type'),
                              isExpanded: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff4942E4),
                                    )),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xffE9E9E9),
                                    )),
                              ),
                              value: timeframeValue,
                              onChanged: (value) {
                                setState(() {
                                  timeframeValue = value!;
                                });
                              },
                              items: timeframe.map((String? newval) {
                                return DropdownMenuItem(
                                  value: newval,
                                  child: Text(newval!),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "  Description",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff2A2A2A)),
                        ),
                        Card(
                          color: Colors.white,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: TextFormField(
                            maxLines: 6,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 10, top: 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xff4942E4),
                                  )),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xffE9E9E9),
                                  )),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff4942E4)
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("Submit",style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                    ),
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
