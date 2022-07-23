import 'package:get/get.dart';

class Dimensions {
  static double screenHeight =
      Get.context!.height; //get height of device screen
  static double screenWidth = Get.context!.width; //get width of device screen
  //calculate the height scaling factor
  static double pageView = screenHeight / 2.77;
  static double pageViewConatainer = screenHeight / 4.02;
  static double pageTextViewConatainer = screenHeight / 7.37;
  //Dynamic height with padding and margin
  static double height10 = screenHeight / 88.4;
  static double height20 = screenHeight / 42.2;
  static double height15 = screenHeight / 58.94;
  static double height30 = screenHeight / 29.47;
  static double height45 = screenHeight / 19.65;

  //Dynamic width with padding and margin
  static double width10 = screenHeight / 88.4;
  static double width15 = screenHeight / 58.94;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 29.47;
  static double width45 = screenHeight / 19.65;

  //Font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  //Radius
  static double radius15 = screenHeight / 58.94;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 29.47;

  //Icon size
  static double iconSize24 = screenHeight / 36.84;
  static double iconSize16 = screenHeight / 52.75;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.03;
}
