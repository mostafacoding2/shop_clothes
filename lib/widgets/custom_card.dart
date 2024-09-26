import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopclothes/Screens/updata_product_page.dart';
import 'package:shopclothes/models/all_product_model.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({super.key,required this.products});
 final ProductsModel products;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context,UpdatProductPage().id,arguments: products);
      },
      child: Center(
        child: Stack(clipBehavior: Clip.none,
          children: [
            Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(
                blurRadius: 39,
                color:Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
            offset: Offset(10, 10)
            )]),
            child: Card(child:
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(products.title.substring(0,15),style:TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold))
                ,
                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                  Text(r'$''${products.price}',style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold)) ,
                  IconButton(onPressed: () {}
                      , icon: Icon(Icons.favorite,color:Colors.red,size: 30,))],)
         ],),
            )
              ,),
            ),Positioned(right:1,top: -60,
                child: Image.network(products.image,height: 100,width: 100,)),
          ],
        ),
      ),
    );
  }
}
