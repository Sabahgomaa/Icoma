import 'dart:async';

import 'package:get_storage/get_storage.dart';
import 'package:icoma/View/AuthCucle/signIn/Model/user.dart';


class CashHelper {
  static final GetStorage _box = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static UserModel? get getUserInfo {
    UserModel? profileModel;
    if (_box.hasData('data')) {
      profileModel = UserModel.fromJson(_box.read('data'));
    }
    return profileModel;
  }

  static Future<void> cashValue(
      {required String key, required bool value}) async {
    return await _box.write(key, value);
  }

  static Future<dynamic> readValue({
    required String key,
  }) async {
    return await _box.read(key);
  }

  static bool get isLogged => getUserInfo != null;

  //static bool get rememberMe =>  ;

  static Future<void> cacheUserInfo(UserModel userModel) =>
      _box.write('data', userModel.toJson());


  static String? get getToken => getUserInfo?.;

  static UserModel? get getUserData => getUserInfo?.data;

  // static Future<void> cacheSettingsInfo(SettingsModel settingsModel) =>
  //     _box.write('settings', settingsModel.toJson());
  //
  // static SettingsModel? get getSettingsInfo {
  //   SettingsModel? settingsModel;
  //   if (_box.hasData('settings')) {
  //     settingsModel = SettingsModel.fromJson(_box.read('settings'));
  //   }
  //   return settingsModel;
  // }

  static Future<void> removeData({
    required String key,
  }) async {
    return await _box.remove(key);
  }

//   static Future<void> signOut() async {
//     try {
//       final response = await DioHelper.get(SIGNOUT);
//       final data = response!.data as Map<String, dynamic>;
//       showToast(msg: data['message'], state: ToastStates.SUCCESS);
//     } catch (e) {
//       showToast(msg: e.toString(), state: ToastStates.SUCCESS);
//     }
//     await _box.erase();
//     MagicRouter.navigateAndPopAll(const LoginScreen());
//   }
}