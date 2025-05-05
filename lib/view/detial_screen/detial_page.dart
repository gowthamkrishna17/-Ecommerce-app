import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/model/api/api_model.dart';
import 'package:ecommerce_app/view/detial_screen/product_Detial_Page.dart';
import 'package:ecommerce_app/view/widgets/titles.dart';
import 'package:flutter/material.dart';

class Detial_page extends StatelessWidget {
  final Future<List<Product>> products;

  final String categoryTitle;
  const Detial_page({
    super.key,
    required this.products,
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SafeArea(child: topbar(title: categoryTitle)),
            Expanded(
              child: FutureBuilder<List<Product>>(
                  future: products,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Text("error:${snapshot.error}");
                    } else {
                      List<Product> productList = snapshot.data!;
                      return ListView.builder(
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          Product product = productList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProductDetialPage(
                                        title: product.title,
                                        imageUrl: product.imageUrl,
                                        description: product.description ??
                                            'No description available',
                                        price: product.price,
                                      )));
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white, boxShadow: [kshodow]),
                              child: ListTile(
                                leading: Image.network(
                                  product.imageUrl,
                                  fit: BoxFit.contain,
                                  height: 200,
                                  width: 100,
                                ),
                                title: Text(product.title),
                                // subtitle: Text(product.description),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
