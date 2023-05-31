import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wahaj/colors.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: CustomNavBar(
        screen: routeName,
        product: product,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withAlpha(50),
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.all(5.0),
                      width: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        //color:Color(0xFF94B49F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: primary[900]),
                            ),
                            Text(
                              '\$${product.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color:primary[900]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  initiallyExpanded: true,
                  title: Text(
                    "Product Information",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        product.description ?? '',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "Delivery Information",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'An estimated delivery time will be provided to you once your order is placed.''Delivery times are estimates and commence from the date of shipping, rather than the date of order.'
                            ' Delivery times are to be used as a guide only and are subject to the acceptance and approval of your order. '
                            'Unless there are exceptional circumstances, we make every effort to fulfill your order within [15] business days of the '
                            'date of your order. Business day mean Monday to Friday, except holidays.'
                            'Please note we do not ship on [Sundays].Date of delivery may vary due to carrier shipping practices, delivery location, method of delivery, and the '
                            'items ordered. Products may also be delivered in separate shipments.',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}