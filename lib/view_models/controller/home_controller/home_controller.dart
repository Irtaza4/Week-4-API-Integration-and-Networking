import 'package:get/get.dart';
import 'package:internship_task_api/data/response/status.dart';
import 'package:internship_task_api/model/user_model/user_model.dart';
import 'package:internship_task_api/repository/home/home_repository.dart';

class HomeController extends GetxController {

  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;

  // Change this to observe a list of UserModels
  final userList = <UserModel>[].obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(List<UserModel> _value) => userList.assignAll(_value);  // Updated to handle List<UserModel>

  void userListApi() {
    _api.fetchUser().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);  // Now setting a list of users
    }).onError((error, stackTrace) {
      print('Api Error: $error');
      print('$stackTrace');
      setRxRequestStatus(Status.ERROR);
    });
  }
}
