import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shopclothes/models/all_product_model.dart';
import 'package:shopclothes/services/get_all_products_services.dart';
import 'package:shopclothes/widgets/custom_card.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
 final String id='HomePage';
 bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
      centerTitle:true,title: Text('New Trend',style: TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),
      actions: [IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.cartPlus,color: Colors.black,))],),
    body:FutureBuilder<List<ProductsModel>>(future: allProductsServices().getallproducts(),
        builder: (context, snapshot){
     List <ProductsModel>Products=snapshot.data!;
     if(snapshot.hasError){return Center(child: CircularProgressIndicator());}
     else if(snapshot.hasData)
      {
        return   ModalProgressHUD(inAsyncCall:isloading ,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0,horizontal: 10),

            child: GridView.builder(itemCount: Products.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 100),
                itemBuilder: (context, index) {
                  return  CustomCard(products: Products[index],);
                }),
          ),
        );
      }
    else
    {return Center(child: CircularProgressIndicator());
    }
    }
    )
    );
  }
}