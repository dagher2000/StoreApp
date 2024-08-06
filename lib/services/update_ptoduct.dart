import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdatePtoductService {
  Future<ProductModel> UpdateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    print('product id =$id');
    Map<String, dynamic> data =
        await Api().Put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}



// class UpdateProductService {
//   Future<ProductModel> updateProduct(
//       {required String title,
//       required String price,
//       required String desc,
//       required String image,
//       required int id,
//       required String category}) async {
//     print('product id  = $id');
//     Map<String, dynamic> data =
//         await Api().Put(url: 'https://fakestoreapi.com/products/$id', body: {
//       'title': title,
//       'price': price,
//       'description': desc,
//       'image': image,
//       'category': category,
//     });

//     return ProductModel.fromJson(data);
//   }
// }
