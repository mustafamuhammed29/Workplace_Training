import 'package:workplace_training/controller/home_controller.dart';
import 'package:workplace_training/core/class/handlingdataview.dart';
import 'package:workplace_training/view/widget/customappbar.dart';
import 'package:workplace_training/view/widget/home/customcardhome.dart';
import 'package:workplace_training/view/widget/home/customtitlehome.dart';
import 'package:workplace_training/view/widget/home/listcategorieshome.dart';
import 'package:workplace_training/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                        titleappbar: "Find Product",
                        onPressedIcon: () {},
                        onPressedSearch: () {}),
                    const CustomTitleHome(title: "Categories"),
                    const ListCategoriesHome(),
                    const CustomTitleHome(title: "Product for you"),
                    const ListItemsHome(),
                  ],
                ))));
  }
}
