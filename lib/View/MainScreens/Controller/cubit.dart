// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:icoma/View/MainScreens/Controller/states.dart';
//
// class SearchCubit extends Cubit<SearchStates> {
//   SearchCubit() : super(SearchInitialState());
//
//   static SearchCubit get(context) => BlocProvider.of(context);
//
//   SearchModel? model;
//
//   Future<void> search(String text) async {
//     emit(SearchLoadingState());
//     final token = CacheHelper.getData(key: 'token');
//     try {
//       final response = await Dio().post(baseURL + SEARCH,
//           options: Options(headers: {
//             'Authorization': token,
//           }),
//           data: {"text": text});
//       print(response.data);
//       model = SearchModel.fromJson(response.data);
//     } catch (e, s) {
//       print(e);
//       print(s);
//     }
//   }
// }