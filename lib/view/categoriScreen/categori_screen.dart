import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/model/api/api_service.dart';
import 'package:ecommerce_app/view/detial_screen/detial_page.dart';
import 'package:ecommerce_app/view/widgets/titles.dart';

import 'package:flutter/material.dart';

import '../../model/api/api_model.dart';

class CategoriScreen extends StatefulWidget {
  const CategoriScreen({super.key});

  @override
  State<CategoriScreen> createState() => _CategoriScreenState();
}

class _CategoriScreenState extends State<CategoriScreen> {
  late Future<List<Category>> categories;
  late Future<List<Product>> products;
  String selectedCategory = 'home';

  @override
  void initState() {
    super.initState();
    categories = ApiService().fetchCategories();
    products = ApiService().fetchProductsByCategory(selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Kheight15,
        topbar(
          title: "Categories",
          showbckbutton: false,
        ),
        Kheight10,
        FutureBuilder<List<Category>>(
            future: categories,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Category category = snapshot.data![index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = category.name
                                  .toLowerCase(); // Set the selected category
                              products = ApiService().fetchProductsByCategory(
                                  selectedCategory); // Fetch products for that category
                            });

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detial_page(
                                    products: products,
                                    categoryTitle: category.name)));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 248),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                          255, 223, 219, 219),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                      blurStyle: BlurStyle.normal,
                                    )
                                  ]),
                              height: 100,
                              child: Row(
                                children: [
                                  Kwidth10,
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        category.name,
                                        style: CatStyle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.elliptical(40, 70),
                                        bottomLeft: Radius.elliptical(40, 65),
                                      ),
                                      child: Container(
                                        height: 100,
                                        width: 200,
                                        color: Colors.red,
                                        child: Image.asset(
                                          'assets/images/pookalam.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                );
              }
            })
      ]),
    );
  }
}
