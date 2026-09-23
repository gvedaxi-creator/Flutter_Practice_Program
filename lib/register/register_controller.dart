import 'package:get/get.dart';
import 'package:vedaxi/api_services/api_services.dart';

class RegisterController extends GetxController
{
  Future<void> registerCont() async
  {
    final respo = await ApiServices().register();
    if(respo.responseCode.toString() == "1")
      {

      }
  }
}