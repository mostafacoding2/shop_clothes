class ProductsModel{
  final dynamic id;
  final String title;
  final dynamic  price;
  final String description;
  final String image;
  final String category;
  final RatingModel Rating;
  ProductsModel({required this.Rating,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category
  });
  factory ProductsModel.fromjeson(jesonData){
    return ProductsModel(

    Rating:   RatingModel.fromjeson(jesonData['rating']),
        category:jesonData['category'],
        id:jesonData['id'],
        title: jesonData['title'],
        price: jesonData['price'],
        description: jesonData['description'],
        image: jesonData['image']
    );
  }
}

class RatingModel
{
  final dynamic rate;
  final dynamic count;
  RatingModel({required this.rate, required this.count});
  factory  RatingModel.fromjeson(jesondata)
  {
    return  RatingModel(rate:jesondata['rate'], count:jesondata['count']);
  }
}