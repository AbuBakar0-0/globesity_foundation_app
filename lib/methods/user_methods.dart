import 'package:dio/dio.dart';
import 'package:globesity/constants/users.dart';
import '../constants/constants.dart';
import 'gen_token.dart';

updateTime(wakeup,bedtime) async {
  var token = await getAuthToken();
  var dio = Dio();
  String url = (Url.url + "/Contacts/" + Users.id.toString()).toString();
  dio.options.headers['Authorization'] = 'Zoho-oauthtoken ' + token;
  var response = await dio.put(
    url,
    data: {
      "data": [
        {
          "Wakeup": (wakeup[0].toString()+":"+wakeup[1].toString()).toString(),
          "Bedtime": (bedtime[0].toString()+":"+bedtime[1].toString()).toString(),
        }
      ]
    },
  );
  var res = response.data;
}

updateProgress(weightLost) async {
  var token = await getAuthToken();
  var dio = Dio();
  String url = (Url.url + "/Contacts/" + Users.id.toString()).toString();
  dio.options.headers['Authorization'] = 'Zoho-oauthtoken ' + token;
  var response = await dio.put(
    url,
    data: {
      "data": [
        {
          "Weight_Lost": weightLost,
        }
      ]
    },
  );
  var res = response.data;
}


updatePassword(password) async {
  var token = await getAuthToken();
  var dio = Dio();
  String url = (Url.url + "/Contacts/" + Users.id.toString()).toString();
  dio.options.headers['Authorization'] = 'Zoho-oauthtoken ' + token;
  var response = await dio.put(
    url,
    data: {
      "data": [
        {
          "Password": password,
        }
      ]
    },
  );
  var res = response.data;
}
