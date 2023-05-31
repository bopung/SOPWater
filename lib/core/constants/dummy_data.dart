import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'SOP water 600ml',
      weight: '600 ml',
      cover: 'https://i.imgur.com/yBVTucD.png',
      images: ['https://i.imgur.com/yBVTucD.png'],
      price: 2.5,
      mainPrice: 4,
    ),
    ProductModel(
      name: 'SOP water 1L',
      weight: '1 L',
      cover: 'https://i.imgur.com/p4CoHev.png',
      images: ['https://i.imgur.com/p4CoHev.png'],
      price: 7,
      mainPrice: 10,
    ),
    ProductModel(
      name: 'SOP water 1,5L',
      weight: '1,5 L',
      cover: 'https://i.imgur.com/yBVTucD.png',
      images: ['https://i.imgur.com/yBVTucD.png'],
      price: 10,
      mainPrice: 12,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: '6 SOP water 600ml ',
      cover: 'https://i.imgur.com/p4CoHev.png',
      itemNames: ['6x SOP Water 600ml'],
      price: 12.5,
      mainPrice: 15,
    ),
    BundleModel(
      name: '6 SOP water 1L',
      cover: 'https://i.imgur.com/yBVTucD.png',
      itemNames: ['6x SOP Water 1L'],
      price: 40,
      mainPrice: 42,
    ),
    BundleModel(
      name: '6 SOP water 1,5L',
      cover: 'https://i.imgur.com/p4CoHev.png',
      itemNames: ['6x SOP Water 1.5L'],
      price: 55,
      mainPrice: 60,
    ),
    BundleModel(
      name: '3 SOP Water',
      cover: 'https://i.imgur.com/yBVTucD.png',
      itemNames: ['600ml, 1L, 1,5L'],
      price: 18,
      mainPrice: 19.5,
    ),
  ];
}
