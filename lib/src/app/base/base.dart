import 'package:ecommerce/src/app/base/constants/base_constants.dart';
import 'package:ecommerce/src/app/base/controllers/base_controller.dart';
import 'package:ecommerce/src/app/drawer/drawer.dart';
import 'package:ecommerce/src/app/products/controller/segments_controller.dart';
import 'package:ecommerce/src/app/products/pages/products_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final baseController = Provider.of<BaseController>(context);
    final segmentsController = Provider.of<SegmentsController>(context);

    final pageController = PageController();

    return Scaffold(
      //Appbar
      appBar: AppBar(
        title: const Text('e-commerce'),
      ),

      //Navigation menu drawer.
      drawer: const DrawerCustom(),

      //Pages bottom navigation.
      body: PageView(
        controller: pageController,
        children: [
          ProductsPage(),
          const Text('Promo price'),
          const Text('Car'),
          const Text('History'),
        ],
      ),

      //Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          baseController.changePage(value);
          pageController.jumpToPage(value);
          segmentsController.selectedSegments = {0};
        },
        currentIndex: baseController.baseIndex,
        items: List.generate(
          BaseConstants.label.length,
          (index) => BottomNavigationBarItem(
            label: BaseConstants.label[index],
            icon: Icon(BaseConstants.icon[index]),
          ),
        ),
      ),
    );
  }
}
