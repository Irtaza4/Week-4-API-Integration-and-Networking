import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_api/model/user_model/user_model.dart';
import 'package:internship_task_api/res/assets/app_animations.dart';
import 'package:lottie/lottie.dart';

class UserView extends StatefulWidget {
   final  UserModel? user;
   UserView({super.key, this.user});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: Card(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: Get.height*.04,),
             Lottie.asset(AppAnimations.person,height:150 ),
            widget.user!=null?
                Column(children: [
                  Center(child: Text('Name: ${widget.user?.name.toString()}',style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold
                  ),
                  )),
                  SizedBox(height: Get.height*.04,),
                  Center(child: Text('Username: ${widget.user?.username.toString()}',style: TextStyle(
    color: Colors.white,fontWeight: FontWeight.bold
    ),)),
                  SizedBox(height: Get.height*.04,),
                  Center(child: Text('Email: ${widget.user?.email.toString()}',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(height: Get.height*.04,),
                  Center(child: Text('Phone no: ${widget.user?.phone.toString()}',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(height: Get.height*.04,),
                  Center(child: Text('Website: ${widget.user?.website.toString()}',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(height: Get.height*.04,),
                  Column(
                    children: [
                      Text('Address',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),),
                      Center(child: Text('Street: ${widget.user!.address?.street.toString()}',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                      Center(child: Text('Suite: ${widget.user!.address?.suite.toString()}',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                      Center(child: Text('City: ${widget.user!.address?.city.toString()}',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                      Center(child: Text('ZipCode: ${widget.user!.address?.zipcode.toString()}',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                    ],
                  ),
                ],)
            :
            Text('no user found')
          ],
        ),
      )
    );
  }
}
