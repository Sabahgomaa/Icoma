import 'package:dio/dio.dart';
import 'package:icoma/Model/get.dart';

class UserService {
  String baseUrl = "https://jsonglaucoma.herokuapp.com/api";
  Future<List<User>> getPateints() async {
    List<User> usersList = [];
    Dio dio =  Dio();
    Response response = await dio.get(baseUrl);
    var data = response.data;
    data.forEach((userItem) {
      User user = User.fromJson(userItem);
      usersList.add(user);
    });
    return usersList;
  }

}