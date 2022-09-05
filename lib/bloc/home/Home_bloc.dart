// import 'dart:async';

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:vocabulary/network/response.dart';
// import 'package:vocabulary/service/home/home_Service.dart';

// import '../../modules/home/home_Modules.dart';

// class HomeBloc {
//   HomeService _homeService;
//   StreamController _homeStreamController;


//   Stream get homeDataStream => _homeStreamController.stream;
//   StreamSink get homeDataSink => _homeStreamController.sink;

//   HomeBloc() {
//     _homeStreamController = StreamController();
//     _homeService = HomeService();
//     _fetchHomeData();
//   }

//   // Future<Home> fetchHomeById({dynamic params}) {
//   //   Completer<Home> c = Completer();
//   //   var b = Home();

//   //   if (params == null) {
//   //     b.message = 'Lỗi data';
//   //   }
//   //   // _homeService!.fetchHomeById(params).then((data) {
//   //   //   if (data != null) {
//   //   //     b = data;
//   //   //   }
//   //   //   c.complete(b);
//   //   // });
//   //   return c.future;
//   // }

//   _fetchHomeData() {
//     try {
//       homeDataSink.add(Response.loading("Loading"));
//       Home data = (_homeService.fetchHomeById()) as Home;
//       homeDataSink.add(Response.completed(data));
//     } catch (e) {
//       homeDataSink.add(Response.error(e.toString()));
//     }
//   }

//   void dispose() {
//     _homeStreamController.close();
//   }
// }
