import 'package:alldays/utils/dimensions.dart';
import 'package:alldays/widget/app_icon.dart';
import 'package:alldays/widget/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../widget/app_colomn.dart';
import '../../widget/big_text.dart';
import '../../widget/icon_and_text_widget.dart';
import '../../widget/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/food01.jpeg",
                    ),
                  ),
                ),

              )),
          //two icons
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined),

                ],
              )),
          //introduction of food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColomn(text:"Chinese Side",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height10,),
                    Expanded(child: SingleChildScrollView(child: ExpandableText(text: "Chicken Marinated which is super delicious if youn ever have to take a bite of this. Ypu will forever want to eat more everyday everytime. Nevertheless, it is really delicious and captivating. wao!!"))),
                  ],
                ),
              )
          )],
          

      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar - 20,
        padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, right: Dimensions.width20, left: Dimensions.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20*2), topRight: Radius.circular(Dimensions.radius20*2)),
          color: Colors.white70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, left: Dimensions.width20,bottom: Dimensions.height20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.mainTextColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.mainTextColor,),

                ],
              ),
            ),
            Container(

              padding: EdgeInsets.only(top: Dimensions.height20, left: Dimensions.width20,bottom: Dimensions.height20, right: Dimensions.width20),
              child: BigText(text: "\#10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
