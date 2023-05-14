import 'package:ecomm_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../models/product_model/product_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.white12,
          color: Colors.deepOrangeAccent,
          activeColor: Colors.deepOrangeAccent,
          tabBackgroundColor: Colors.grey.shade300,
          padding: EdgeInsets.all(17),
          gap: 8,
          tabs: [
            GButton(icon: Icons.home_outlined,
            text: "Home"),
            GButton(icon: Icons.category_outlined,
            text: "Category",),
            GButton(icon: Icons.shopping_cart_outlined,
            text: "Cart",),
            GButton(icon: Icons.person_outline,
            text: "Profile",),
          ],
        ),
      ),
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text("SnapShop",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 84,),
                child: CupertinoButton(
                  onPressed: (){},
                  child: Icon(Icons.favorite_outline,
                  size: 30,
                  color: Colors.deepOrangeAccent,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: CupertinoButton(
                  onPressed: () {},
                  child: Icon(Icons.notifications_outlined,
                  size: 35,
                  color: Colors.deepOrangeAccent,),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children:[
                Icon(Icons.location_on_outlined, color: Colors.grey,),
                Text(" Deliver to 431003",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15.5,
                ),
                ),
                Icon(Icons.arrow_drop_down_outlined,
                color: Colors.grey,)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 50, color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Search for products",
                prefixIcon: Icon(
                  Icons.search,
                ),
                suffixIcon: CupertinoButton(
                  onPressed: (){
                  },
                  child: Icon(
                    Icons.camera_enhance, color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
         SizedBox(
           height: 2,
         ),
         Padding(
           padding: EdgeInsets.only(left: 26, top: 10),
           child: Text(
             "Hop into your choice",
             style: TextStyle(
               fontSize: 22,
               color: Colors.grey.shade800,
               fontWeight: FontWeight.bold
             ),
           ),
         ),
         SizedBox(
           height: 20,
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: categoriesList.map((e) => Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Card(
                 elevation: 5,
                 color: Colors.white70,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: SizedBox(
                     height: 100,
                     width: 100,
                     child: Image.network(e)
                 ),
               ),
             ),).toList()
           ),
         ),
         // TopTitles(subtitle: "SnapShop", title: "SnapShop"),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  height: 90,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Super savings with a subscription worth Rs 999/-",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:1),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 20),
                        child: Text("Shop Now",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Row(
                            children: productList.map((e) => Padding(
                              padding: const EdgeInsets.only(left: 7, top: 10),
                              child: Card(
                                elevation: 0,
                                color: Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                    height: 130,
                                    width: 120,
                                    child: Image.network(e)
                                ),
                              ),
                            ),).toList()
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 20),
                        child: Text("Recently Viewed",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9, top: 20),
                          child: Text("Continue Your Search",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,),
                          child: InkWell(
                            onTap: (){
                              print("You're Tapped!");
                              },
                            child:
                            CupertinoButton(
                              onPressed: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Icon(Icons.arrow_right_outlined,
                                  size: 40,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),

                              // child: Text(">",
                              // style: TextStyle(
                              //   fontWeight: FontWeight.bold,
                              //   fontSize: 20,
                              //   color: Colors.deepOrangeAccent
                              // ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 20),
                        child: Text("Upto 60% off  |  Skincare",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 20),
                        child: Text("Recently Viewed",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Container(
                  height: 200,
                  width: 142,
                  decoration: BoxDecoration(
                    color: Color(0xffECCDB4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> categoriesList = [
  "https://img.freepik.com/free-vector/seasonal-sale-discounts-presents-purchase-visiting-boutiques-luxury-shopping-price-reduction-promotional-coupons-special-holiday-offers-vector-isolated-concept-metaphor-illustration_335657-2766.jpg",
  //deals
  "https://img.freepik.com/free-vector/purchasing-habits-abstract-concept_335657-2995.jpg",
  "https://img.favpng.com/10/17/17/vector-graphics-grocery-store-shopping-cart-supermarket-clip-art-png-favpng-A7JAdsyx0ncsrBdWBkKVhtsC7.jpg",
  "https://img.freepik.com/premium-vector/smartphone-blank-screen-phone-mockup_172533-421.jpg?w=2000",
  //grocery
  "https://png.pngtree.com/png-vector/20200604/ourlarge/pngtree-concept-vector-illustration-of-shopping-online-from-home-shopping-by-phone-png-image_2218912.jpg",
  "https://www.pngarts.com/files/7/Modern-Furniture-PNG-High-Quality-Image.png",
];

List<String> productList = [
];
// List<ProductModel> BestProducts = [
//   ProductModel(
//       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoTA_2051gyG_NEcrjBkxdiFEDMi1KSjChw&usqp=CAU",
//       id: "1",
//       name: "Iphone 14 Pro Max",
//       price: "",
//       description: "njcdicndincbdhbhd",
//       isFavourite: false,
//   )
// ];
