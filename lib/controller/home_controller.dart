import 'package:workplace_training/core/class/statusrequest.dart';
import 'package:workplace_training/core/constant/routes.dart';
import 'package:workplace_training/core/functions/handingdatacontroller.dart';
import 'package:workplace_training/core/services/services.dart';
import 'package:workplace_training/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat, String categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List items = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }
}
