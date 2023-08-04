import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_library_example_1/controllers/card_controller.dart';
import 'package:getx_library_example_1/controllers/shopping_controller.dart';

class MyShoppingPage extends StatelessWidget{
  MyShoppingPage({super.key});
  final shoppingController = Get.put(ShoppingController());
  final cardController = Get.put(CardController());
  @override
  Widget build(BuildContext context) {
    print("Build Method is Called :");
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: GetX<ShoppingController>(
            builder: (controller){
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context,index){
                return Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(controller.products[index].productName),
                      Text(controller.products[index].price.toString()),
                      ElevatedButton(onPressed: (){
                        cardController.addCard(controller.products[index]);
                      }, child: const Text("Add To Cart"))
                    ],
                  ),
                );
              });
            },
          )),
          GetX<CardController>(
            builder: (controller){
              return Text("Total Amount : \$ ${controller.totalAmounts} ");
            },
          ),
          const SizedBox(height: 100,)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        label: GetX<CardController>(
          builder: (controller){
            return Text("Total Items in cart : ${controller.totalItems}");
          },
        ),
      ),
    );
  }

}