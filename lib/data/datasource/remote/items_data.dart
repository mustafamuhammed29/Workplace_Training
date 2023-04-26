import 'package:workplace_training/core/class/crud.dart';
import 'package:workplace_training/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.items, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
