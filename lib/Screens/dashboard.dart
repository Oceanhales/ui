import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/EmployeeTabControler.dart';
import 'package:flutter_app/UI Resorce/category_card.dart';
import 'package:flutter_app/UI Resorce/colors.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
     // bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .40,
            decoration: BoxDecoration(
              color: myPrimaryColor,
              borderRadius: BorderRadius.circular(20),
              //Color(0xff00aeef),
              // image: DecorationImage(
              //   alignment: Alignment.centerLeft,
              //   image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              // ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: const DecorationImage(
                            image: NetworkImage('https://miro.medium.com/max/700/0*0fClPmIScV5pTLoE.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(70),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Good Morning",
                    style:
                    TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Maksudur Rahaman",
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white

                            //Color(0xff3f3d56),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Attendence",
                          svgSrc: "assets/images/in.png",
                          press: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EmployeeTabControler(),),
                          );
                            },
                        ),
                        CategoryCard(
                          title: "Task",
                          svgSrc: "assets/images/Task.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EmployeeTabControler(),),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Profile",
                          svgSrc: "assets/images/profile.png",

                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EmployeeTabControler(),),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Settings",
                          svgSrc: "assets/images/settings.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EmployeeTabControler(),),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

