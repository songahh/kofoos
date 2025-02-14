import 'package:flutter/material.dart';
import 'package:kofoos/src/common/back_button_widget.dart';
import 'package:kofoos/src/pages/home/func/home_editor_func.dart';
import 'package:kofoos/src/pages/home/home.dart';
import 'package:kofoos/src/pages/home/home_editor_page_2.dart';
import 'package:kofoos/src/pages/search/search_detail_page.dart';
import 'package:kofoos/src/root/root.dart';

class HomeEditorPage2 extends StatelessWidget {
  const HomeEditorPage2({Key? key}) : super(key: key);

  Widget _homeEditorRelatedGoodsWidget(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Related Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 6; i < 9; i++)
                    GestureDetector(
                      onTap: () {
                        homeEditorFunc(context, i);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/editor/related_products/ecr$i.jpg',
                            // 974, 228, 21
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    width: 100.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/editor/content/ec1_1.jpg'),
                ),
                Container(
                  child: Image.asset('assets/editor/content/ec1_2.jpg'),
                ),
                Container(
                  child: Image.asset('assets/editor/content/ec1_3.jpg'),
                ),
                Container(
                  child: Image.asset('assets/editor/content/ec1_4.jpg'),
                ),
                _homeEditorRelatedGoodsWidget(context),
              ],
            ),
          ),
          BackButtonWidget(),
        ],
      ),
    );
  }
}
