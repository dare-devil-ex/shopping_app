import 'package:flutter/material.dart';
import 'package:shopping_app/pages/global_var.dart';
import 'package:shopping_app/pages/productCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> titles = const ["Nike", "Bata", "Addidas", "Jordan"];
  late String selectedList;
  final border = OutlineInputBorder(borderRadius:  BorderRadius.horizontal(left: Radius.circular(50)),borderSide: BorderSide(color: const Color.fromARGB(255, 239, 236, 236)));
  @override
  void initState() {
    selectedList = titles[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SafeArea(
                      child: Text(
                        "Shoe\nCollections",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                          fontSize: 25
                        ),
                      )
                    ),
                  ),
                  // Search Bar
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        iconColor: Colors.purpleAccent,
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: border,
                        focusedBorder: border
                      ),
                    )
                  )
                ],
              ),
              
              SizedBox(
                  height: 80,
                  child: ListView.builder(itemBuilder: (context, index) {
                    final filter = titles[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedList = filter;
                          });
                        },
                        child: Chip(
                          label: Text(filter.toString()),
                          backgroundColor: selectedList == filter
                          ? Colors.pinkAccent
                          : Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),)
                        ),
                    );
                  },
                  itemCount: titles.length,
                  scrollDirection: Axis.horizontal,
                  ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  
                  itemBuilder: (context, index) {
                    final pro = products[index];
                    return Productcard(
                      title: pro["title"].toString(),
                      price: pro["price"] as double,
                      image: pro["imageUrl"] as String,
                      bg: index.isEven ? Colors.pink : Colors.white 
                    );
                  },
                )
              )
            ],
          ),
      ),
    );
  }
}