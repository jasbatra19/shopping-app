import 'package:flutter/material.dart';
import 'package:shoppingapp/data/product.dart';
import 'package:shoppingapp/screens/cart.dart';
import 'package:shoppingapp/screens/home.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

// ignore: camel_case_types
class addToCartPurse extends StatelessWidget {
  const addToCartPurse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShopperCart"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_bag))
        ],
        backgroundColor: Colors.teal.shade600,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Card(
                child: Image.asset(product[i].image),
              ),
              Container(
                color: Colors.cyan.shade400,
                width: screenSize(context).width,
                child: Center(
                  child: Text(
                    "${product[i].title}",
                    style: TextStyle(fontFamily: "satisfy", fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                          "Proident consectetur elit elit ea do culpa qui veniam minim. Ea exercitation culpa quis eu. Dolor amet incididunt ipsum laborum nostrud id enim anim aliquip sint labore ea excepteur magna. Voluptate est quis adipisicing quis duis aliquip nisi occaecat velit labore esse aliqua officia veniam. Duis nulla ipsum voluptate eiusmod velit cupidatat proident anim nisi est labore est sint culpa."),
                    ),
                    GestureDetector(
                        onTap: () {
                          getId(product[i].id);
                          print(product[i].id);
                          pay(product[i].cost);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(color: Colors.red.shade200),
                          child: Center(
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
