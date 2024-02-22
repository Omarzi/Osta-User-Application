// ignore_for_file: use_build_context_synchronously
import 'package:dio/dio.dart';
import 'package:osta_app/utils/constants/exports.dart';
import 'package:osta_app/utils/local_storage/cach_keys.dart';

class DioHelper {
  Dio dio = Dio();

  Future<Response> getData({required String endPoint}) async {
    print('Before response');
    Response response = await dio.get(
      OConstants.baseUrl + endPoint,
      options: Options(
        headers: {
          "authorization": "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
        },
      ),
    );
    print('After response');
    return response;
  }

  Future<Response> postData({
    bool handleError = true,
    required String endPoint,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      Response response = await dio.post(
        OConstants.baseUrl + endPoint,
        data: body,
        options: Options(
          followRedirects: false,
          validateStatus: (status) => true,
          headers: {
            "authorization":
            "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
          },
        ),
      );
      if (response.statusCode == 204 ||
          response.statusCode == 200 ||
          response.statusCode == 201) {
      } else if (response.statusCode == 403) {}
      return response;
    } on DioError catch (error) {
      rethrow;
    }
  }

  Future<Response> postDataWithoutAuth({
    bool handleError = true,
    required String endPoint,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      Response response = await dio.post(
        OConstants.baseUrl + endPoint,
        data: body,
      );
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 204 ||
          response.statusCode == 200 ||
          response.statusCode == 201) {
      } else if (response.statusCode == 403) {
        if (kDebugMode) {
          print(response.data);
        }
      }
      return response;
    } on DioError catch (error) {
      rethrow;
    }
  }

  Future<Response> putData({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    return await dio.put('${OConstants.baseUrl}$endPoint',
        data: body,
        options: Options(
          headers: {
            "authorization":
            "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
          },
        ));
  }

  Future<Response> patchData({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    return await dio.patch('${OConstants.baseUrl}$endPoint',
        data: body,
        options: Options(headers: {
          "authorization": "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
        }));
  }

  Future<Response> deleteFromCart({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    return await dio.put('${OConstants.baseUrl}$endPoint',
        data: body,
        options: Options(
          headers: {
            "authorization":
            "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
          },
        ));
  }

  Future<Response> deleteData({
    required String endPoint,
    Map<String, dynamic>? body,
    // String? token,
  }) async {
    return await dio.delete(OConstants.baseUrl + endPoint,
        data: body,
        options: Options(headers: {
          "authorization": "Bearer ${OCacheHelper.getString(key: CacheKeys.token)}",
        }));
  }

  static void logout(BuildContext context) async {
    await OCacheHelper.clearShared();
    Navigator.pushReplacementNamed(context, 'checkScreen');
  }
}