import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  loginUser(String username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("username", username);
  }

  Future<String?> getusername() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? username = sharedPreferences.getString('username');
    return username;
  }
}
