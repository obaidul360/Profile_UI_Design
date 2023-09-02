import 'dart:ui';

import 'package:flutter/material.dart';

import 'cancel.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile UI Design")),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/11/19/15/32/laptop-1839876_1280.jpg'),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                          color: Colors.blue,
                        ),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buidTextField("Full Name", "Enter your name", false),
              buidTextField("Email", "Enter your email", false),
              buidTextField("Password", "********", true),
              buidTextField("Location", "Dhaka", false),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 0.5),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Log Out",style: TextStyle(
                            fontSize: 15,letterSpacing: 2,color: Colors.white),


                        )),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }

  Widget buidTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscurePassword = !isObscurePassword;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
