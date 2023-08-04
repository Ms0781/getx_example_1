import 'package:get/get.dart';
import 'package:getx_library_example_1/model/product.dart';

class ShoppingController extends GetxController{
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async{
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(id: 1, productName: "Product1", productImage: 'abd', productDescription: "Just Product 1", price: 20),
      Product(id: 2, productName: "Product2", productImage: 'abd', productDescription: "Just Product 2", price: 30),
      Product(id: 3, productName: "Product3", productImage: 'abd', productDescription: "Just Product 3", price: 40)
    ];
    products.value = productResult;
  }
}