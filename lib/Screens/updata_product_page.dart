import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shopclothes/models/all_product_model.dart';
import 'package:shopclothes/services/updata_product.dart';
import 'package:shopclothes/widgets/custom_buton.dart';
import 'package:shopclothes/widgets/custom_texfield.dart';
class UpdatProductPage extends StatefulWidget {
  UpdatProductPage({super.key});
  final String id='UpdatProductPage';

  @override
  State<UpdatProductPage> createState() => _UpdatProductPageState();
}

class _UpdatProductPageState extends State<UpdatProductPage> {

String? ProductName,description,image ,price;

int? Id;

bool Isloading =false;

  @override
  Widget build(BuildContext context) {
  ProductsModel  products=ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return ModalProgressHUD(
      inAsyncCall: Isloading,
      child: Scaffold(
        appBar:AppBar(title:Text('Update Product') ,),
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 50,),
            CustomTextField(hintText: 'Enter Your Id',onchanged:(data){Id=int.parse(data);}, textInputType: TextInputType.number,),
            CustomTextField(hintText: 'Enter Your ProductName',onchanged: (data){ProductName=data;},textInputType: TextInputType.text,),
            CustomTextField(hintText: 'Enter Your Price',onchanged: (data){price=data;},textInputType: TextInputType.number,),
            CustomTextField(hintText: 'Enter Your description',onchanged: (data){description=data;},textInputType: TextInputType.text),
            CustomTextField(hintText: 'Enter Your Image',onchanged: (data){image=data;},textInputType: TextInputType.text),
        SizedBox(height: 30,)
            ,CustomButon(
              text:'UpDate',
              onPressed: ()async{
                Isloading=true;setState(() {

                });
                try{
           await updataProductServices().updataproduct(
                  id: products.id,
                  title: ProductName==null?products.title:ProductName!,
                  price: price==null?products.price:price!,
                  description: description==null?products.description:description!,
                  image: image==null?products.image:image!,
                  category: products.category);
                print('success');}catch(e){print(e.toString());}
                Isloading=false;
                setState(() {

                });
            },),
            SizedBox(height: 30,)
          ],
        ),
      ),
      ),
    );
  }}