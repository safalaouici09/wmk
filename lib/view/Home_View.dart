import 'package:flutter/material.dart';

import 'package:wmk/Palette.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'package:wmk/model/News_Model.dart';
import 'package:intl/intl.dart';

class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  _Home_ViewState createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  News news = News(
      newsDateTime: DateFormat('dd-MM-yyyy').format(DateTime.now()),
      newsTitle: "news news news",
      newsImage: Image.asset('assets/news.jpg'));

  List<News> newsList = <News>[];
  int _index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newsList.add(news);
    newsList.add(news);
    newsList.add(news);
    newsList.add(news);
    newsList.add(news);
    newsList.add(news);
    newsList.add(news);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CbackGround,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: CbackGround,
        title: Row(
          children: [
            Text("Home"),
            SizedBox(
              width: 180,
            ),
            Icon(Icons.search)
          ],
        ),
      ),
      body: Container(
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 250,
              width: 300,
              child: Stack(children: [
                newsList[index].newsImage,
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
                        newsList[index].newsDateTime.toString(),
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
                        newsList[index].newsTitle,
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
