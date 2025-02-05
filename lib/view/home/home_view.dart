import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_api/data/response/status.dart';
import 'package:internship_task_api/res/assets/app_animations.dart';
import 'package:internship_task_api/view/user/user_view.dart';
import 'package:internship_task_api/view_models/controller/home_controller/home_controller.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController  = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserList'),
      ),
      body: Obx((){
        switch(homeController.rxRequestStatus.value){
          case  Status.LOADING:
            return  Center(child: Lottie.asset(AppAnimations.userLoader));
          case  Status.ERROR:
            return  Center(child: Text('Something Went  Wrong'),);
          case  Status.COMPLETED:
            return  Card(
              child: ListView.builder(
                  itemCount: homeController.userList.length,
                  itemBuilder: (context,index){
                    final user  =homeController.userList[index];
                return  ListTile(
                  onTap: (){
                    Get.to(UserView(user: user,));
                  },
                  title: Text(user.name.toString()),
                  subtitle: Text(user.email.toString()),
                  trailing: Text(user.id.toString()),
                  leading: CircleAvatar(
                  child: Icon(Icons.person),
                  ),
                );
              }),
            );
            
        }
      }),
    );
  }
}
