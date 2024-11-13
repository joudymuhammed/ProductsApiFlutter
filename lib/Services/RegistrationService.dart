import 'package:dio/dio.dart';
import 'package:joudy_0522053/Models/RegistrationModel.dart';

class RegistrationService{
 static Dio dio = Dio();
 static Future<RegistrationModel>PostSignUp({required String Name,required String Phone,required String Email,required String Password}) async
 {
   try{
   Response response = await dio.post("https://student.valuxapps.com/api/register",
     data: {
     "name":Name,
       "phone":Phone,
       "email": Email,
       "password":Password
     });

     if(response.statusCode ==200){
       print(response.data);
       print("SignUP successfully");
       return RegistrationModel.fromJson(response.data);
     }
     else
       {
         print("erorrr");
         throw Exception("errorrr");
       }
   }
   catch(e)
   {
     throw Exception("error msg: ${e}");
   }
}





 static Future<RegistrationModel>PostSignIn({required String Email,required String Password}) async
 {
   try{
   Response response = await dio.post("https://student.valuxapps.com/api/login",
       data: {
         "email": Email,
         "password":Password
       }

   );

     if(response.statusCode ==200){
       print(response.data);
       print("login successfully");
       return RegistrationModel.fromJson(response.data);
     }
     else
     {
       throw Exception("errooor");
     }
   }
   catch(e)
   {
     throw Exception("error msg: ${e}");
   }
 }
}





