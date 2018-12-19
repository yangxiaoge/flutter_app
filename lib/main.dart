import 'package:flutter/material.dart';

class Product {
  final String title;
  final String desc;
  Product(this.title, this.desc);
}

void main() {
  runApp(MaterialApp(
    title: '导航的数据传递和接收',
    home: ProductListView(
        products: List.generate(100, (i) => Product('商品 $i', '商品详情,编号为：$i'))),
  ));
}

class ProductListView extends StatelessWidget {
  final List<Product> products;

  ProductListView({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                ListTile(
                  title: Text('${products[i].title}'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetail(itemProduct: products[i]),
                        ));
                  },
                ),
                Divider(color: Color(0xfff8bbd0),)
              ],
            ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product itemProduct;
  ProductDetail({Key key, this.itemProduct}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页'),
      ),
      body: Center(
        child: Text(itemProduct.desc),
      ),
    );
  }
}
