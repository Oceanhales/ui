
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Attendence.dart';
import 'package:flutter_app/Screens/Profile.dart';
import 'package:flutter_app/Screens/settings.dart';
import 'package:flutter_app/Screens/task.dart';
import 'package:flutter_app/UI%20Resorce/colors.dart';
//import 'package:driving_test_scheduler/screens/default_available_test_times.dart';
//import 'package:driving_test_scheduler/screens/second_available_test_time.dart';
//import 'package:driving_test_scheduler/screens/third_available_test_time.dart';
//import 'package:shared_preferences/shared_preferences.dart';


class EmployeeTabControler extends StatefulWidget {
  @override
  _EmployeeTabControlerState createState() => _EmployeeTabControlerState();
}

class _EmployeeTabControlerState extends State<EmployeeTabControler>with SingleTickerProviderStateMixin {

  //static String TestCentur;

  // Future<String> getToken() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('test_centure');
  // }
  TabController _tabController;

  @override
  void initState() {
    // super.initState();
    // getToken().then((value){
    //   setState(() {
    //     TestCentur=value;
    //   });
    // });
    _tabController = new TabController(vsync: this, length: tabs.length);

  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  final List<Tab> tabs = <Tab>[
    //new Tab(text: TestCentur.toString(),),


    new Tab(text: "Attendance"),
    new Tab(text: "Task"),
    new Tab(text: "Profile"),
    new Tab(text: "Settings"),
    new Tab(text: "Settings"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: myPrimaryColor,
          title: Text('Maksudur Rahaman',style: TextStyle(color: Colors.white,fontSize: 20.0),),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          bottom: new TabBar(

            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            unselectedLabelStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
            isScrollable: true,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: new BubbleTabIndicator(
              indicatorHeight: 23.0,
              indicatorColor: Colors.white30,
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              insets: EdgeInsets.symmetric(horizontal: 0.0),
            ),
            tabs: tabs,
            controller: _tabController,
          ),
        ),
        body:TabBarView(
          controller: _tabController,
          children: <Widget>[

            Attendence(),
            Task(),
            Profile(),
            Settings(),
            Settings()

          ],
        )
    );
  }
}
