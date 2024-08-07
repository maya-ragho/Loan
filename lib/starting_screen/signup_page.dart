import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loan/home_page.dart';
import 'package:loan/model/user_model.dart';
import 'package:loan/services/database.dart';
import 'package:loan/starting_screen/opt_screen.dart';
import 'package:random_string/random_string.dart';
import 'phone_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _isObscure = true;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _signUp() async {}
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: nameController,
                          maxLines: 3,
                          minLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Full Name",
                           // hintText: "Enter Full Name",
                            suffixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),

                        // validator: (value) {
                        //   List<String Function(String?)> validators = [
                        //         (value) {
                        //       if (value == null || value.isEmpty) {
                        //         return 'Please enter your name';
                        //       }
                        //       return '';
                        //     },
                        //         (value) {
                        //       if (value != null && value.length < 3) {
                        //         return 'Name must be at least 3 characters';
                        //       }
                        //       return '';
                        //     },
                        //         (value) {
                        //       if (value != null && value.length > 30) {
                        //         return 'Name must be less than 30 characters';
                        //       }
                        //       return '';
                        //     },
                        //     // Add additional validators as needed
                        //   ];
                        //
                        //   for (var validator in validators) {
                        //     final error = validator(value);
                        //     if (error.isNotEmpty) {
                        //       return error;
                        //     }
                        //   }
                        //   return ''; // Return empty string if all validators pass
                        // },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter Email",
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter your email';
                        //   }
                        //   // Email format validation
                        //   final emailRegExp = RegExp(
                        //       r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                        //   if (!emailRegExp.hasMatch(value)) {
                        //     return 'Please enter a valid email';
                        //   }
                        //   // Add additional email validation here if needed
                        //   return null;
                        // },


                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "Phone",
                          hintText: "Enter Phone Number",
                          suffixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),

                        ),

                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter your contact number';
                        //   }
                        //   // Check if entered value contains only digits and has a length of 10
                        //   final isValidNumber = RegExp(r'^\d{10}$').hasMatch(value);
                        //   if (!isValidNumber) {
                        //     return 'Please enter a valid 10-digit number';
                        //   }
                        //   return null;
                        // },

                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: 'Enter Password',
                           prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter your password';
                        //   }
                        //   if (value.length < 7) {
                        //     return 'Password must be at least 7 characters long';
                        //   }
                        //   // Add additional password validation here if needed
                        //   return null;
                        // },

                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () async {

                          if(_formKey.currentState != null &&
                          _formKey.currentState!.validate()) {
                            final newuser =
                            await _auth.createUserWithEmailAndPassword(email: emailController.text,
                                password: passController.text);
                            if(newuser != null){
                              await FirebaseFirestore.instance.collection('NewUser').add({


                              });
                            }
                            String Id = randomAlphaNumeric(10);
                            Map<String, dynamic> userInfoMap = {
                              "Name": nameController.text,
                              "Email": emailController.text,
                              "Phone": phoneController.text,
                              "Pass": passController.text,
                            };
                            await DatabaseMethods().signupUserDetails(
                                userInfoMap, Id).then((value) {
                              Fluttertoast.showToast(
                                  msg: "User Details has been uploaded successfully",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 14.0
                              );
                            });
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text('SignUp'),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PhoneAuth()),
                          );
                        },
                        child: Text('I have account?'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


