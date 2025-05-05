import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/model/favorite_model/favoriteModel.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Map<String, dynamic>> favList = [];

class Favorite_screen extends StatefulWidget {
  const Favorite_screen({super.key});

  @override
  State<Favorite_screen> createState() => _Favorite_screenState();
}

class _Favorite_screenState extends State<Favorite_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Kheight30,
            Kheight5,
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Favorite",
                  style: CatStyle,
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                // scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) =>
                    Kheight15,
                shrinkWrap: true,
                itemCount: favList.length,
                itemBuilder: (context, index) {
                  var item = favList[index];
                  return cart_box(
                    image: item['image'],
                    name: item['name'],
                    ontap: () {
                      setState(() {
                        favList.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class checkout_sec extends StatelessWidget {
//   const checkout_sec({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // final provider = Provider.of<Favoritemodel>(context, listen: false);
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       width: double.infinity,
//       height: 120,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(top: BorderSide(color: Colors.black, width: 1))),
//       child: Column(
//         children: [
//           Kheight10,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Total"),
//               Consumer<Favoritemodel>(builder: (context, provider, child) {
//                 return Text(
//                   "${provider.total}",
//                   style: CatStyle,
//                 );
//               })
//             ],
//           ),
//           Kheight5,
//           MaterialButton(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//             color: Colors.amber,
//             height: 50,
//             minWidth: 300,
//             onPressed: () {},
//             child: Text("Checkout"),
//           )
//         ],
//       ),
//     );
//   }
// }

class cart_box extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final VoidCallback ontap;
  const cart_box(
      {super.key,
      required this.image,
      required this.name,
      this.price = 00,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favoritemodel>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: radius10, boxShadow: [kshodow]),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.green,
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        ("${provider.prize.toInt()}"),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                rounded_btn(
                  btnAction: provider.decrement,
                  iconadd: Icons.remove,
                ),
                Kwidth10,
                Consumer<Favoritemodel>(builder: (context, countval, child) {
                  return Text(
                    ("${provider.quantity}"),
                    style: titleText18,
                  );
                }),
                Kwidth10,
                rounded_btn(
                  btnAction: provider.increment,
                  iconadd: Icons.add,
                ),
                Kwidth5
              ],
            ),
          ),
          Kheight10,
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: ontap,
                child: Row(
                  children: [Icon(Icons.badge), Kwidth10, Text("Add to cart")],
                ),
              ),
              Container(
                height: 52,
                width: 1,
                color: Colors.black,
              ),
              TextButton(
                onPressed: ontap,
                child: Row(
                  children: [Icon(Icons.delete), Kwidth10, Text("Remove")],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class rounded_btn extends StatelessWidget {
  final IconData iconadd;
  final VoidCallback btnAction;
  const rounded_btn(
      {super.key, required this.iconadd, required this.btnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
            width: 2, color: const Color.fromARGB(255, 221, 138, 132)),
        color: const Color.fromARGB(255, 240, 201, 198),
      ),
      child: GestureDetector(onTap: btnAction, child: Icon(iconadd)),
    );
  }
}
