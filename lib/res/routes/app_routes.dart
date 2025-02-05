
import 'package:get/get.dart';
import 'package:internship_task_api/model/user_model/user_model.dart';
import 'package:internship_task_api/res/routes/routes_name.dart';
import 'package:internship_task_api/view/home/home_view.dart';
import 'package:internship_task_api/view/user/user_view.dart';

class AppRoutes{

  static  appRoutes()=>[

    GetPage(name: RoutesName.homeRoute, page: ()=>HomeView(),
    transition: Transition.leftToRight
    ),
    GetPage(name: RoutesName.userScreen, page: ()=>UserView())

  ];

}