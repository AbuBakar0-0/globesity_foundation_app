import 'package:dio/dio.dart';

getAuthToken() async {
  var dio = Dio();
  String url = ("https://accounts.zoho.com/oauth/v2/token").toString();
  dio.options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
  dio.options.queryParameters['refresh_token'] =
      '1000.5285075ee5a4ab6b72b8db9cb00d3555.29dd9b7f06eb62dab58f5ef63d9ad824';
  dio.options.queryParameters['client_id'] =
      '1000.VMLCSF77FBRYDBFB4VXAJ9R0YLW08A';
  dio.options.queryParameters['client_secret'] =
      '6da45ff06c01019702817a41ffd3c90647a415801f';
  dio.options.queryParameters['grant_type'] = 'refresh_token';

  var response = await dio.post(url);
  var res = response.data;
  print(res['access_token']);
  return res['access_token'];
}
