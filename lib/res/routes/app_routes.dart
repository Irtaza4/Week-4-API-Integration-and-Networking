
import 'package:get/get.dart';
import 'package:internship_task_api/res/routes/routes_name.dart';
import 'package:internship_task_api/view/home/home_view.dart';

class AppRoutes{

  static  appRoutes()=>[

    GetPage(name: RoutesName.homeRoute, page: ()=>HomeView(),
    transition: Transition.leftToRight
    )

  ];

}