// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:loan/drawer/raise_%20request/request.dart';
// import 'package:loan/grid_view/construction_finance_loan.dart';
// import 'package:loan/grid_view/gold_loan.dart';
// import 'package:loan/grid_view/home_loan.dart';
// import 'package:loan/grid_view/msme_loan.dart';
// import 'package:loan/starting_screen/phone_auth.dart';
//
// import 'drawer/my_loan.dart';
// import 'drawer/profile_page.dart';
// import 'drawer/raise_ request/call.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> request = ['Call', 'Request'];
//   // List<String> carousel_slider =[
//   //   'assets/images/img_1.png',
//   //   'assets/images/gold.png',
//   //   'assets/images/img_2.png',
//   //   'assets/images/img_5.png',
//   //   'assets/images/gold2.png',
//   // ];
//
//
//   String? selectRequest;
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return Scaffold(
//        backgroundColor: Color(0xffFAFAFA),
//       appBar: AppBar(
//         title: Text(
//             'Home Page',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//       ),
//       bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40.0),
//             topRight: Radius.circular(40.0)),
//         child: Container(
//
//           child: BottomNavigationBar(
//               backgroundColor: Color(0xff0e548b),
//               currentIndex: 0,
//               items: [
//                 BottomNavigationBarItem(
//                     icon: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.home, color: Colors.white,),
//                     ),
//                     label: 'Home', ),
//                 BottomNavigationBarItem(
//                     icon: IconButton(
//                       onPressed: () {},
//                       icon: GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MyLoans()));
//                           },
//                           child: Icon(Icons.attach_money_sharp,color: Colors.white,)),
//                     ),
//                     label: 'My Loans', backgroundColor: Colors.white),
//                 BottomNavigationBarItem(
//                     icon: IconButton(
//                       onPressed: () {},
//                       icon: GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ProfilePage()));
//                           },
//                           child: Icon(Icons.person,color: Colors.white,)),
//                     ),
//                     label: 'Profile')
//               ]),
//         ),
//       ),
//       drawer: Drawer(
//         child: Stack(
//           children: [
//             ListView(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Color(0xff0e548b),
//                       image: DecorationImage(
//                           image: AssetImage('assets/images/img.png'),
//                           fit: BoxFit.cover)),
//                   height: 200,
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 40,
//                       ),
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundColor: Colors.grey,
//                         ),
//                         title: Text('UMESH THORAT'),
//                         subtitle: Text('Cust Id:1216442'),
//                       ),
//                       SizedBox(
//                         height: 05,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.person_outline_outlined),
//                   title: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfilePage()));
//                       },
//                       child: Text("Profile")),
//                 ),
//                 ListTile(
//                     leading: Icon(Icons.request_quote_outlined),
//                     title: Text("Raise a Request"),
//                     trailing: PopupMenuButton<String>(
//                       icon: Icon(Icons.arrow_drop_down),
//                       onSelected: (String result) {
//                         print(result);
//                         // Handle your logic here based on the selection
//                       },
//                       itemBuilder: (BuildContext context) =>
//                           <PopupMenuEntry<String>>[
//                         PopupMenuItem<String>(
//                           value: 'Call',
//                           child: InkWell(
//                               onTap: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: (context) => CallConnection()));
//                               },
//                               child: Text('Call')),
//                         ),
//                         PopupMenuItem<String>(
//                           value: 'Request',
//                           child: InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Request()));
//                               },
//                               child: Text('Request')),
//                         ),
//                       ],
//                     )),
//                 ListTile(
//                   leading: GestureDetector(
//                       onTap: () {
//                         _shoDialog(context);
//                       },
//                       child: Icon(Icons.logout)),
//                   title: InkWell(
//                       onTap: (){
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => PhoneAuth()));
//                       },
//                       child: Text("Log out")),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Container(
//           // margin: EdgeInsets.only(top: 10.0),
//           padding: EdgeInsets.only(top: 11.0),
//           decoration: BoxDecoration(
//             color: Color(0xffFAFAFA),
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//                border: Border.all(width: 0.1),
//               ),
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           // color: Color(0xFFF2F2F2),
//           child: Column(
//             children: [
//               ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(35)),
//                   child: Image.asset(
//                     'assets/images/home.jpg',
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     width: MediaQuery.of(context).size.width * 0.9,
//                   )),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: GridView.count(
//                   shrinkWrap: true,
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 14,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(width: 0.3),
//                       ),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => HomeLoan()),
//                           );
//                         },
//                         child: itemDashboard(
//                             'Home Loan',
//                             CupertinoIcons.home,
//                             Color(0xff0e548b)),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                         border: Border.all(width: 0.3),
//                       ),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => GoldLoan()),
//                           );
//                         },
//                         child: itemDashboard(
//                             'Gold Loan',
//                             CupertinoIcons.cube_fill,
//                             Color(0xff0e548b)),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                         border: Border.all(width: 0.3),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15.0),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => ConstructionFinanceLoan()),
//                             );
//                           },
//                           child: itemDashboard(
//                               'Construction Finance Loan',
//                               CupertinoIcons.building_2_fill,
//                               Color(0xff0e548b)),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                         border: Border.all(width: 0.3),
//                           boxShadow:[
//                               BoxShadow(
//                                   offset: Offset(0,5),
//                                   color: Colors.white,
//                                   spreadRadius: 2,
//                                   blurRadius: 40
//                               ),
//                             ]
//
//                       ),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => MsmeLoan()),
//                           );
//                         },
//                         child: itemDashboard(
//                             'MSME Loan',
//                             CupertinoIcons.money_dollar_circle,
//                             Color(0xff0e548b)),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// itemDashboard(String title, IconData iconData, Color background )=> Container(
// decoration: BoxDecoration(
//   color: Colors.white,
//   borderRadius: BorderRadius.circular(10),
//   boxShadow:[
//     BoxShadow(
//       offset: Offset(0,5),
//       color: Colors.white,
//       spreadRadius: 1,
//       blurRadius: 40
//     ),
//   ]
// ),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(color:  background,shape: BoxShape.circle),
//         child: Icon(iconData, color: Colors.white),
//       ),
//       SizedBox(height: 8,),
//       Text(title, style: Theme.of(context).textTheme.titleMedium,)
//     ],
//   ),
// );
// }
//
// void _shoDialog(BuildContext context) {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Are you sure you want to log out ?'),
//           actions: [
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('No')),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PhoneAuth()));
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Logged out')),
//                   );
//                 },
//                 child: Text('Yes'))
//           ],
//         );
//       });
// }
// //
// // class CarouselSliderModel {
// //   String img1;
// //   String img1;
// //   String img1;
// //   String img1;
// //   String img1;
// //   CarouselSliderModel(this.img1, this.img1, this.img1, this.img1, this.img1);
// // }


import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan/drawer/raise_%20request/request.dart';
import 'package:loan/grid_view/construction_finance_loan.dart';
import 'package:loan/grid_view/gold_loan.dart';
import 'package:loan/grid_view/home_loan.dart';
import 'package:loan/grid_view/msme_loan.dart';
import 'package:loan/starting_screen/phone_auth.dart';

import 'drawer/my_loan.dart';
import 'drawer/profile_page.dart';
import 'drawer/raise_ request/call.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> request = ['Call', 'Request'];


late TabController _tabController;
  List<String> sliderList =[
    'assets/images/img_1.png',
    'assets/images/gold.png',
    'assets/images/img_2.png',
    'assets/images/img_5.png',
    'assets/images/gold2.png',
  ];


  String? selectRequest;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0)),
        child: Container(

          child: BottomNavigationBar(
              backgroundColor: Color(0xff0e548b),
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: Colors.white,),
                  ),
                  label: 'Home', ),
                BottomNavigationBarItem(
                    icon: IconButton(
                      onPressed: () {},
                      icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyLoans()));
                          },
                          child: Icon(Icons.attach_money_sharp,color: Colors.white,)),
                    ),
                    label: 'My Loans', backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: IconButton(
                      onPressed: () {},
                      icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: Icon(Icons.person,color: Colors.white,)),
                    ),
                    label: 'Profile')
              ]),
        ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0e548b),
                      image: DecorationImage(
                          image: AssetImage('assets/images/img.png'),
                          fit: BoxFit.cover)),
                  height: 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Maya Ragho'),
                        subtitle: Text('Cust Id:..........'),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.person_outline_outlined),
                  title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: Text("Profile")),
                ),
                ListTile(
                    leading: Icon(Icons.request_quote_outlined),
                    title: Text("Raise a Request"),
                    trailing: PopupMenuButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                      onSelected: (String result) {
                        print(result);
                        // Handle your logic here based on the selection
                      },
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Call',
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CallConnection()));
                              },
                              child: Text('Call')),
                        ),
                        PopupMenuItem<String>(
                          value: 'Request',
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Request()));
                              },
                              child: Text('Request')),
                        ),
                      ],
                    )),
                ListTile(
                  leading: GestureDetector(
                      onTap: () {
                        _shoDialog(context);
                      },
                      child: Icon(Icons.logout)),
                  title: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneAuth()));
                      },
                      child: Text("Log out")),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          // margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(top: 11.0),
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(width: 0.1),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Color(0xFFF2F2F2),
          child: Column(
            children: [

             SizedBox(
                height: 150,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration:
                    Duration(milliseconds: 100),
                    reverse: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    enlargeFactor: 0.5,
                    viewportFraction: 0.9,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: sliderList.length,
                  itemBuilder: (context, index, realIndex){
                    return  Container(
                      margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.white),
                      child: SizedBox(height:300,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(sliderList[index].toString(),fit: BoxFit.fitWidth, )),
                    );

                  },
                ),
              ),


              // ClipRRect(
              //     borderRadius: BorderRadius.all(Radius.circular(35)),
              //     child: Image.asset(
              //       'assets/images/home.jpg',
              //       height: MediaQuery.of(context).size.height * 0.25,
              //       width: MediaQuery.of(context).size.width * 0.9,
              //     )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 14,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 0.3),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeLoan()),
                          );
                        },
                        child: itemDashboard(
                            'Home Loan',
                            CupertinoIcons.home,
                            Color(0xff0e548b)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(width: 0.3),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GoldLoan()),
                          );
                        },
                        child: itemDashboard(
                            'Gold Loan',
                            CupertinoIcons.cube_fill,
                            Color(0xff0e548b)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(width: 0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ConstructionFinanceLoan()),
                            );
                          },
                          child: itemDashboard(
                              'Construction Finance Loan',
                              CupertinoIcons.building_2_fill,
                              Color(0xff0e548b)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(width: 0.3),
                          boxShadow:[
                            BoxShadow(
                                offset: Offset(0,5),
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 40
                            ),
                          ]

                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MsmeLoan()),
                          );
                        },
                        child: itemDashboard(
                            'MSME Loan',
                            CupertinoIcons.money_dollar_circle,
                            Color(0xff0e548b)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  itemDashboard(String title, IconData iconData, Color background )=> Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:[
          BoxShadow(
              offset: Offset(0,5),
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 40
          ),
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color:  background,shape: BoxShape.circle),
          child: Icon(iconData, color: Colors.white),
        ),
        SizedBox(height: 8,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}


void _shoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to log out ?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No')),
            TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => PhoneAuth()));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logged out')),
                  );
                },
                child: Text('Yes'))
          ],
        );
      });
}

class CarouselSliderModel {
  String img_1;
  String img_2;
  String img_5;
  String gold2;
  CarouselSliderModel(this.img_1, this.img_2, this.img_5, this.gold2);
}
