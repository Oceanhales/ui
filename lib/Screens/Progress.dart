import 'package:flutter/material.dart';
import 'package:flutter_app/UI Resorce/colors.dart';
import 'package:flutter_app/Screens/Workplace.dart';
class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*.20,
                  //color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1",style: TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 20),),
                      Text("September",style: TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 12),),
                      Text("2020",style: TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 15),),
                    ],
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bogura home office",
                          style:
                          TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Text(
                            "Carmicle road suagari Bogura ",
                            style:
                            TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 12),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Container(
                            //color: Colors.grey,
                            width: MediaQuery.of(context).size.width*.60,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("In time      : 09:30",
                                      style: TextStyle(color: myPrimaryColor, fontSize: 16),),
                                    Text("09:30",
                                      style: TextStyle(color: Colors.green, fontSize: 16),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Out time   : 18:30",
                                      style: TextStyle(color: myPrimaryColor, fontSize: 16),),
                                    Text("18:30",
                                      style: TextStyle(color: Colors.green, fontSize: 16),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
