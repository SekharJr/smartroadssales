import 'package:shared_preferences/shared_preferences.dart';

class sharedpref{

  void saveString(String key,String value)async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setString(key,value);
  }
  Future<String>getString(String key)async{
    final SharedPreferences prefs= await SharedPreferences.getInstance();
    String? value=await prefs.getString(key);
    return value!;
  }
  void savebool(String key,bool value)async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
  Future<bool>getbool(String key)async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    bool? value=await prefs.getBool(key);
    return value ?? false;
  }
}

