import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shoehub/data/product_data.dart';
import '../../data/brand_data.dart';
import '../../utilis/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
                          fillColor: klightgreyClr,
                          filled: true,
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search by brand , type etc...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://img.lovepik.com/free-png/20211202/lovepik-cartoon-avatar-png-image_401259598_wh1200.png"),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Brands",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: brandData.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: brandData[index].color,
                                  // backgroundImage: NetworkImage(brandData[index].image),
                                  child: ClipOval(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      brandData[index].image,
                                      color: kwhiteClr,
                                    ),
                                  )),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/sport-club-sale-banner-template_23-2150360684.jpg?w=360",
                          height: 200,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "New Arrival",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 14, color: kprimaryClr),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AlignedGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemCount: productData.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: klightgreyClr,
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        productData[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  productData[index].title,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$${productData[index].price}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
