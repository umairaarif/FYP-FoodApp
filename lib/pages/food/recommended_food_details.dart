import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommededFoodDetails extends StatelessWidget {
  const RecommededFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(text: "Chinese Rice", size: Dimensions.font26)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra magna ac placerat vestibulum lectus. Tempus egestas sed sed risus pretium quam. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Aliquet nibh praesent tristique magna. Id porta nibh venenatis cras sed. Pharetra pharetra massa massa ultricies. Faucibus in ornare quam viverra orci sagittis. Lobortis scelerisque fermentum dui faucibus in ornare. Dis parturient montes nascetur ridiculus mus mauris vitae. Non odio euismod lacinia at. Vitae suscipit tellus mauris a Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Ut diam quam nulla porttitor massa id. Nascetur ridiculus mus mauris vitae ultricies leo. Non blandit massa enim nec dui. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Neque laoreet suspendisse interdum consectetur libero id. Arcu dictum varius duis at. Tortor at risus viverra adipiscing. Enim neque volutpat ac tincidunt vitae semper quis. Justo nec ultrices dui sapien eget mi proin. Integer malesuada nunc vel risus commodo viverra maecenas accumsan.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra magna ac placerat vestibulum lectus. Tempus egestas sed sed risus pretium quam. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Aliquet nibh praesent tristique magna. Id porta nibh venenatis cras sed. Pharetra pharetra massa massa ultricies. Faucibus in ornare quam viverra orci sagittis. Lobortis scelerisque fermentum dui faucibus in ornare. Dis parturient montes nascetur ridiculus mus mauris vitae. Non odio euismod lacinia at. Vitae suscipit tellus mauris a.Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Ut diam quam nulla porttitor massa id. Nascetur ridiculus mus mauris vitae ultricies leo. Non blandit massa enim nec dui. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Neque laoreet suspendisse interdum consectetur libero id. Arcu dictum varius duis at. Tortor at risus viverra adipiscing. Enim neque volutpat ac tincidunt vitae semper quis. Justo nec ultrices dui sapien eget mi proin. Integer malesuada nunc vel risus commodo viverra maecenas accumsan."),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.remove),
                BigText(
                    text: "Rs.120 " + " X " + " 0",
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(text: "Rs.200 | Add to cart"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
