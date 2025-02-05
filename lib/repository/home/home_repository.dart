import 'package:internship_task_api/data/services/network_api_services.dart';
import 'package:internship_task_api/model/user_model/user_model.dart';
import 'package:internship_task_api/res/app_url/app_url.dart';

class HomeRepository {
  final _api = NetworkApiServices();

  Future<List<UserModel>> fetchUser() async {
    final response = await _api.getApi(AppUrl.userListUrl);

    // Assuming the response is a List, we need to map it to a List of UserModel objects
    List<UserModel> users = (response as List).map((user) => UserModel.fromJson(user)).toList();

    return users;
  }
}

