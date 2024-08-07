import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../home_page.dart';
import '../starting_screen/phone_auth.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          Icon(Icons.notifications_active_sharp),
        ],
       ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff0e548b),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home,color: Colors.white,),
              ),
              label: 'Home',),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home,color: Colors.white),
                ),
                label: 'My Loans'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(Icons.person,color: Colors.white),
                ),
                label: 'Profile')
          ]),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/white_bg2.jpg',), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(child: Text(' ')),
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 05,
                              offset: Offset(0,01))
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 170,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Customer ID :  ')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Mobile No :  ')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.mail),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Email:- ')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: GestureDetector(
                onTap: () {},
                child: CupertinoButton(
                    color:  Color(0xff0e548b),
                    child: Row(
                      children: [
                        Text(
                          'LOGOUT',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.power_settings_new, color: Colors.white)
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PhoneAuth()));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}




