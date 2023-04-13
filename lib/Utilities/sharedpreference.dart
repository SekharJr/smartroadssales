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
  
}