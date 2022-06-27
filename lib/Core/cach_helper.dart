import 'dart:async';
import 'package:get_storage/get_storage.dart';
import 'package:icoma/View/AuthCucle/signIn/Model/login_model.dart';

class CashHelper {
  static final GetStorage _box = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    required String token,
    required LoginModel userModel,
  }) async {
    await _cacheUserToken(token);
    await _cacheUserModel(userModel);
  }

  static Future<void> cacheUserModel({
    required LoginModel userModel,
  }) async {
    await _cacheUserModel(userModel);
  }


  static Future<void> _cacheUserModel(LoginModel userModel) async =>
      await _box.write('userModel', userModel.toJson());


  static Future<void> _cacheUserToken(String token) async =>
      await _box.write('token', token);

  static LoginModel? get getUserInfo {
    LoginModel? userModel;
    if (_box.hasData('userModel')) {
      userModel = LoginModel.fromJson(_box.read('userModel'));
    }
    return userModel;
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




  static String? get getToken => getUserInfo?.token;

  //static User? get getUserData => getUserInfo?.user;

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