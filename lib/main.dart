import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/activity.dart';
import 'postCards.dart';
import 'utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes/data.dart';

//KAAN ATMACA'S PROGRAM

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppPage> {
  List<Widget> _pages = [
  TagsPage(), // see the FrontPage class
  AnalyzePage(), // see the SettingsPage class
  ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) { //ADD APP BAR
return CupertinoApp(
    home: CupertinoPageScaffold(
          child: CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                  currentIndex: 0,
                  backgroundColor:AppColors.tabColor,
                  items: [
                    BottomNavigationBarItem(icon: Icon(CupertinoIcons.tags_solid),
                      activeIcon: Icon(CupertinoIcons.tags_solid,
                        color: AppColors.secondarly,
                      ),
                      title: Text(
                        "Tags",
                        style: GoogleFonts.raleway(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                        ),
                      ),
                     // label: "Tags",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.chart_bar_fill),
                      activeIcon: Icon(CupertinoIcons.chart_bar_fill,
                        color: AppColors.secondarly,
                      ),
                      title: Text(
                        "Analyze",
                        style: GoogleFonts.raleway(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_2_alt),
                      activeIcon: Icon(CupertinoIcons.person_2_alt,
                        color: AppColors.secondarly,
                      ),
                      title: Text(
                        "Profiles",
                        style: GoogleFonts.raleway(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                tabBuilder: (BuildContext context, index) {
                  return _pages[index];
                }),

        ),
    );
  }
}

List<Color> listOfColors = [AppColors.primary, AppColors.secondarly, AppColors.thirdly];

List<Activity> posts = [
  Activity(time: "20.01:10", name: "Arya", work: "Vitamins", hue:listOfColors[0]),
  Activity(time: "24.10:20", name: "Efe", work: "Sleeping",hue:listOfColors[1]),
  Activity(time: "02.07:14", name: "Ada", work: "BreastFeeding", hue:listOfColors[2]),
  Activity(time: "14.13:55", name: "Mert", work: "Bath",  hue:listOfColors[0]),
];

class TagsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OFFERS",
                style: GoogleFonts.raleway(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: AppColors.tabColor,
        ),
        body:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Text('Tags Page',
                  style: GoogleFonts.raleway(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
              SizedBox(height: 260,),
              Container(
                height: 55.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: posts.map((post) => PostCard(
                          activity: post,
                      )).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class AnalyzePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ANALYZE",
                style: GoogleFonts.raleway(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: AppColors.tabColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text('Analyze Page',
                style: GoogleFonts.raleway(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),),
            ),
            SizedBox(height: 260,),
            Container(
              height: 55.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: posts.map((post) => PostCard(
                        activity: post,
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PROFILES",
                style: GoogleFonts.raleway(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: AppColors.tabColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text('Profile Page',
              style: GoogleFonts.raleway(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
            SizedBox(height: 260,),
            Container(
              height: 55.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: posts.map((post) => PostCard(
                        activity: post,
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

 page: () {
                          Navigator.pushNamed(context, '/datapage');
                        }
 */