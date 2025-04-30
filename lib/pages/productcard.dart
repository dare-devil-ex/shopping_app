import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {

  final String title;
  final double price;
  final String image;
  final Color bg;

  const Productcard({
    required this.title,
    required this.price,
    required this.image,
    required this.bg,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Card(
        color: bg,
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              Text(title, style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: 3,),            
              Text("\$ $price", style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(height: 6,),
              Center(child: Image(image: AssetImage(image), height: 170,))
            ],
          ),
        ),
      ),
    );
  }
}