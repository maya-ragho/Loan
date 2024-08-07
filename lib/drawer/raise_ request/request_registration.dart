import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import '../../home_page.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController typedescription = TextEditingController();
  final List<String> items1 = [
    'Gold Loan',
    'Home Loan',
    'Construction Loan',
    'MSME Loan'
  ];
  String? selectedValue1;

  final List<String> items2 = [
    '30100003118607'
  ];
  String? selectedValue2;

 final List<String> items3 = [
'Change in Demographic Details',
   'Documents Related',
   'Leads',
   'Loan Ralated'
      ];
  String? selectedValue3;

  final List<String> items4 = [
    'Updating/Change in Email ID'
  ];
  String? selectedValue4;

  // File? _image;
  // final ImagePicker _picker = ImagePicker();

  // void SelectImage(ImageSource source)async{
  //   final pickedFile =  await _picker.pickImage(source: source);
  //   setState(() {
  //     if(pickedFile! null){
  //       _image = File(pickedFile.path);
  //     } else{
  //       _image = null;
  //     }
  //   }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Raise Service Request',
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
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              alignment: (kIsWeb) ? Alignment.center: Alignment.centerLeft,
              height: 600,
              width: (kIsWeb)? 580 : 380,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.9),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Loan Type'),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      height: 25,
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                items: items1
                                    .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: selectedValue1,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedValue1 = value;
                                  });
                                },
                                buttonStyleData: ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: MenuItemStyleData(
                                  height: 40,
                                ),
                              )),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Loan Account Number'),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      height: 25,
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: Text(
                                  '',
                                  style: TextStyle(fontSize: 14, color: Colors.redAccent),
                                ),
                                items: items2
                                    .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: selectedValue2,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedValue2 = value;
                                  });
                                },
                                buttonStyleData: ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: MenuItemStyleData(
                                  height: 40,
                                ),
                              )),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Request Type'),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      height: 25,
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                items: items3
                                    .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: selectedValue3,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedValue3 = value;
                                  });
                                },
                                buttonStyleData: ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: MenuItemStyleData(
                                  height: 40,
                                ),
                              )),


                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Sub-Request Type'),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      height: 25,
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                items: items4
                                    .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                                    .toList(),
                                value: selectedValue4,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedValue4 = value;
                                  });
                                },
                                buttonStyleData: ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: MenuItemStyleData(
                                  height: 40,
                                ),
                              )),


                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Request Description'),
                   Container(
                     color: Color(0xffECECEC),
                     height: 160,
                     width: 260,
                     child: TextFormField(
                       controller: typedescription,
                       maxLines: 4,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Type Description.......'
                       ),
                     ),
                   ),
                    SizedBox(height: 10),
                    Text('Document Upload'),
                    Row(
                      children: [
                        Center(
                          child: Container(
                            height: 36,
                            width: 115,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff828282))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: (){
                                    // SelectImage(ImageSource.gallery);
                                    },
                                    child: Text('Choose File',)),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                            backgroundColor: Color(0xff828282),
                            child: InkWell( onTap: (){
                              //SelectImage(ImageSource.camera);
                            },
                                child: Icon(Icons.camera_alt_rounded, color: Colors.white,))),
                        Spacer(),
                        // _image! null? Image.file(_image!, width: 50,height: 50,):
                        Text('No File Chosen'),
                      ],
                    ),
                    SizedBox(height: 10,),
                   Center(
                     child: Container(
                       height: 36,
                       width: 115,
                       color: Color(0xff0e548b),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Submit', style: TextStyle(color: Colors.white),),
                           Icon(Icons.play_arrow_rounded,color: Colors.white,)
                         ],
                       ),
                     ),
                   ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
