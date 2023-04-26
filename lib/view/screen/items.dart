import 'package:cached_network_image/cached_network_image.dart';
import 'package:workplace_training/controller/items_controller.dart';
import 'package:workplace_training/core/class/handlingdataview.dart';
import 'package:workplace_training/core/constant/color.dart';
import 'package:workplace_training/data/model/itemsmodel.dart';
import 'package:workplace_training/linkapi.dart';
import 'package:workplace_training/view/widget/customappbar.dart';
import 'package:workplace_training/view/widget/home/listcategorieshome.dart';
import 'package:workplace_training/view/widget/items/customlistitems.dart';
import 'package:workplace_training/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(15),
        child: GetBuilder<ItemsControllerImp>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  CustomAppBar(
                      titleappbar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {}),
                  const SizedBox(height: 20),
                  const ListCategoriesItems(),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                      })
                ]))),
      ),
    );
  }
}
