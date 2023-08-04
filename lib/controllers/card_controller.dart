import 'package:get/get.dart';
import 'package:getx_library_example_1/model/product.dart';

class CardController extends GetxController{
      var cardItems = <Product>[].obs;
      double get totalAmounts => cardItems.fold(0.0, (sum, item) => sum+item.price);

      addCard(Product product){
        cardItems.add(product);
      }
}