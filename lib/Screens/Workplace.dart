import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/UI%20Resorce/colors.dart';
class Workplace extends StatefulWidget {
  @override
  _WorkplaceState createState() => _WorkplaceState();
}

class _WorkplaceState extends State<Workplace> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
           itemBuilder: (BuildContext context, int index){
             return Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
                               child: Container(
                                 height: 130,
                                 color: Colors.blue.shade50,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Container(
                                         width: MediaQuery.of(context).size.width*.70,
                                         //color: Colors.black26,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             Text("Bogura home office", style: TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 22),),
                                             Text("Carmicl suagari Bogura", style: TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 16),),
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0,top: 8.0,right: 8.0),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: <Widget>[
                                                   Text("In time      : 09:30",
                                                     style: TextStyle(color: myPrimaryColor, fontSize: 14),),
                                                   Text("09:30",
                                                     style: TextStyle(color: Colors.green, fontSize: 14),),
                                                 ],
                                               ),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: <Widget>[
                                                   Text("Out time   : 09:30",
                                                     style: TextStyle(color: myPrimaryColor, fontSize: 14),),
                                                   Text("09:30",
                                                     style: TextStyle(color: Colors.green, fontSize: 14),),
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Container(
                                                       child: FloatingActionButton(
                                                         elevation: 10,
                                                         backgroundColor: myPrimaryColor,
                                                         onPressed: () {},
                                                         child: Center(
                                                           child: Text(
                                                             'IN',
                                                             style: TextStyle(
                                                                 fontSize:  20,
                                                                 fontWeight: FontWeight.bold,
                                                                 color: Colors.white),
                                                           ),
                                                         ),
                                                       ),
                                                     ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
             ],
             );
           },
        )
    );
  }
}

    //          Container(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   Text("1",style:
    //                   TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 30),),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 8.0),
    //                     child: Text("September",style:
    //                     TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 13),),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 8.0),
    //                     child: Text("2020",style:
    //                     TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 25),),
    //                   ),
    //                 ],
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Text("Current Location : Bogura station road",style:
    //                 TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 15),),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(4.0),
    //         child: Container(
    //           color: Colors.blue.shade50,
    //           child: ListTile(
    //             // color: Colors.blue.shade600,
    //             title: Container(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: <Widget>[
    //                   Text(
    //                     "Bogura home office",
    //                     style:
    //                     TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 22),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 1.0),
    //                     child: Text(
    //                       "Carmicle road suagari Bogura",
    //                       style:
    //                       TextStyle(color: myPrimaryColor,fontWeight: FontWeight.w600, fontSize: 16),
    //                     ),
    //                   ),
    //
    //                   Padding(
    //                     padding: const EdgeInsets.only(top:8.0),
    //                     child: Container(
    //                       //color: Colors.grey,
    //                       width: MediaQuery.of(context).size.width*.55,
    //                       child: Column(
    //                         children: <Widget>[
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: <Widget>[
    //                               Text("In time      : 09:30",
    //                                 style: TextStyle(color: myPrimaryColor, fontSize: 14),),
    //                               Text("09:30",
    //                                 style: TextStyle(color: Colors.green, fontSize: 14),),
    //                             ],
    //                           ),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: <Widget>[
    //                               Text("Out time   : 18:30",
    //                                 style: TextStyle(color: myPrimaryColor, fontSize: 14),),
    //                               Text("18:30",
    //                                 style: TextStyle(color: Colors.green, fontSize: 14),),
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             trailing: Container(
    //               child: FloatingActionButton(
    //                 elevation: 10,
    //                 backgroundColor: myPrimaryColor,
    //                 onPressed: () {},
    //                 child: Center(
    //                   child: Text(
    //                     'IN',
    //                     style: TextStyle(
    //                         fontSize:  20,
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  // }
// }

