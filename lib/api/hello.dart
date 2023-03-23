import 'package:http/http.dart' as http;

const String baseUrl = "https://dhw-music-38234-8-1317417350.sh.run.tcloudbase.com";

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse('$baseUrl/hello'));
  if(response.statusCode == 200){
    return response.body;
  }else{
    throw Exception("请求错误");
  }
}
