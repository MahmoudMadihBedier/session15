import 'package:shared_preferences/shared_preferences.dart';

/// set , get , remove
///  {key , value}
///
/// "names" :  true
///
///
class CachData {
 static late SharedPreferences sharedPreferences; // declaration
  static void initalizeCacha() async {
    sharedPreferences = await SharedPreferences.getInstance(); // assigment
  }

//methods
 static Future<bool> setData({required String key, required dynamic value})  async{
    if (value is String) {
      await sharedPreferences.setString(key, value);
      return true;
    } else if (value is int) {
     await  sharedPreferences.setInt(key, value);
      return true;
    } else if (value is bool) {
     await sharedPreferences.setBool(key, value);
      return true;
    } else if (value is double) {
     await sharedPreferences.setDouble(key, value);
    return true;
    }
    return false;
  }

 static dynamic getDate({required String key})  {
    return sharedPreferences.get(key);

  }

 static  void removeData({required String key}) {  
    sharedPreferences.remove(key);
  }
}
