// import 'package:http/http.dart' as http;

// import '../model/lessons_datamodel.dart';
// // import '../model/programs_datamodel.dart';

// class API {
//   bool loading = true;
//   List<Item> loadLessons(String url){
//   List<Item> items = [];
//   // final String url = "https://632017e19f82827dcf24a655.mockapi.io/api/programs";
//   var client = http.Client();
//   Future<void> fetchData() async {
//     http.Response response = await client.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       API1Datanew responseJson = modelFromJson(response.body);
//       responseJson.items.map((e) => items.add(e)).toList();
//       setState(() {
//         loading = false;
//       });
//     } else {
//       throw ("error");
//     }
//   }
//   }
// }
