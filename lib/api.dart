import 'package:http/http.dart' as http;
import 'dart:convert';

class api {
  String base_url =
      'https://apis.data.go.kr/1160100/service/GetStockSecuritiesInfoService/getStockPriceInfo';
  String serviceKey =
      '9%2BoWggKWTJtzK5fHuMi9rOCDFSuaGve5xxVWAGSqiDflSrWvUj87fc6LT54lnDwqfKNmRoUR5RdQwuLLaVlHog%3D%3D';
  String count = '5';
  String page = '1';
  String today = DateTime.now().toString().replaceAll('-', '').split(' ')[0];
  String code;

  api(this.code);

  Future<Map<String, dynamic>> GetApi() async {
    Map<String, dynamic> data = {};
    String url =
        '${base_url}?serviceKey=${serviceKey}&numOfRows=${count}&pageNo=${page}&resultType=json&endBasDt=${today}&likeSrtnCd=${code}';

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      // count개수만큼의 element
      List row = json['response']['body']['items']['item'];

      String name = row[0]['itmsNm']; // 회사명
      String market = row[0]['mrktCtg']; // 상장위치
      List<int> prices = []; // 종가
      List<int> change_prices = []; // 변화 금액
      List<double> change_ratio = []; // 변화율
      List<String> dates = []; // 날짜

      row.forEach((element) {
        prices.add(int.parse(element['clpr'])); // 종가
        change_prices.add(int.parse(element['vs'])); // 변화 금액
        change_ratio.add(double.parse(element['fltRt'])); // 변화율
        dates.add(element['basDt']); // 날짜
      });

      data['name'] = name;
      data['market'] = market;
      data['prices'] = prices;
      data['change_prices'] = change_prices;
      data['change_ratio'] = change_ratio;
      data['dates'] = dates;

      return data;
    } else {
      return data;
    }
  }
}
