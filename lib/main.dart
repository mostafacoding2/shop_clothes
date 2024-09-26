import 'package:flutter/material.dart';
import 'package:shopclothes/Screens/home_page.dart';
import 'package:shopclothes/Screens/updata_product_page.dart';
void main(){
  runApp(StoreShop());
}
class StoreShop extends StatelessWidget {
  const StoreShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{


        UpdatProductPage().id:(context)=>UpdatProductPage()
      },

      debugShowCheckedModeBanner: false,

    home: HomePage(),
    );
  }
}
