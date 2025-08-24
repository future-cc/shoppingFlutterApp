import '../index.dart';
/// 用户 api
class UserApi {
  /// 注册
  static Future<bool> register(UserRegisterReq? req) async {
    var res = await WPHttpService.to.post(
      '/users/register',
      data: req,
    );

    if (res.statusCode == 201) {
      return true;
    }
    return false;
  }

  /// 登录
  static Future<UserTokenModel> login(UserLoginReq? req) async {
    var res = await WPHttpService.to.post(
      '/users/login',
      data: req,
    );

    UserTokenModel resModel = UserTokenModel.fromJson(res.data);
    // 本地保存 token
    await UserService.to.setToken(resModel.token!);
    // 获取用户资料
    await UserService.to.getProfile();
    return resModel;
  }

  /// Profile
  static Future<UserProfileModel> profile() async {
    var res = await WPHttpService.to.get(
      '/users/me',
    );
    return UserProfileModel.fromJson(res.data);
  }
}
