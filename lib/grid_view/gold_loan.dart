import 'package:flutter/material.dart';

import '../home_page.dart';
class GoldLoan extends StatefulWidget {
  const GoldLoan({super.key});

  @override
  State<GoldLoan> createState() => _GoldLoanState();
}

class _GoldLoanState extends State<GoldLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gold Loan',
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/white_bg2.jpg'), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xff0e548b),),
                      ),
                      onPressed: (){},
                      child: Text('ACTIVE',style: TextStyle(color: Colors.white),)
                  ),
                  Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xff0e548b)),
                      ),onPressed: (){},
                      child: Text('CLOSED',style: TextStyle(color: Colors.white),)
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
