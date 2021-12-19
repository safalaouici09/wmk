import 'package:flutter/material.dart';
import 'package:wmk/Palette.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'package:wmk/model/Job_Model.dart';
import 'package:intl/intl.dart';

class Job_View extends StatefulWidget {
  const Job_View({Key? key}) : super(key: key);

  @override
  _Job_ViewState createState() => _Job_ViewState();
}

class _Job_ViewState extends State<Job_View> {
  Job job = Job(
      jobDateTime: DateFormat('dd-MM-yyyy').format(DateTime.now()),
      jobTitle: "job job job",
      jobImage: Image.asset('assets/job.png', fit: BoxFit.fill));

  List<Job> jobsList = <Job>[];
  int _index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jobsList.add(job);
    jobsList.add(job);
    jobsList.add(job);
    jobsList.add(job);
    jobsList.add(job);
    jobsList.add(job);
    jobsList.add(job);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CbackGround,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: CbackGround,
        title: Text("Jobs"),
      ),
      body: Container(
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: jobsList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 250,
              width: 300,
              child: Stack(children: [
                jobsList[index].jobImage,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87,
                    ),
                    child: Center(
                      child: Text(
                        jobsList[index].jobDateTime.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  //left: 30,
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        jobsList[index].jobTitle,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]),
            );
          },
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: CbackGround,
        selectedBackgroundColor: CbackGround,
        selectedItemColor: Colors.blue,
        onTap: (int val) => setState(() {
          _index = val;
          _index = val;
          Navigator.pushNamed(context, '/$_index');
        }),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.cases_outlined, title: 'Jobs'),
          FloatingNavbarItem(icon: Icons.location_on, title: 'Contact'),
          FloatingNavbarItem(icon: Icons.info_rounded, title: 'about us'),
        ],
      ),
    ));
  }
}
