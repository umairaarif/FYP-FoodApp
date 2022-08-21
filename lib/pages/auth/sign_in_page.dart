import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/base/custom_loader.dart';
import 'package:food_delivery/base/show_custom_snackbar.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/models/signup_body_model.dart';
import 'package:food_delivery/pages/auth/sign_up_page.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    void _login(AuthController authController) {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (email.isEmpty) {
        ShowCustomSnackBar("Type in your email", title: "Email");
      } else if (!GetUtils.isEmail(email)) {
        ShowCustomSnackBar("Type in a valid email address", title: "Valid email address");
      } else if (password.isEmpty) {
        ShowCustomSnackBar("Type in your password", title: "Password");
      } else if (password.length < 6) {
        ShowCustomSnackBar("Password can not be less than 6 characters", title: "Password");
      } else {
        authController.login(email, password).then((status) {
          if (status.isSuccess) {
            // Get.toNamed(RouteHelper.getInitial());
            Get.toNamed(RouteHelper.getCartPage());
          } else {
            ShowCustomSnackBar(status.message);
          }
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AuthController>(builder: (authController) {
          return !authController.isLoading
              ? SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: Dimensions.screenHeight * 0.05),

                      //app logo
                      Container(
                        height: Dimensions.screenHeight * 0.25,
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/image/logo part 1.png"),
                            radius: Dimensions.radius20*4,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      //welcome
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: Dimensions.width20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                fontSize: Dimensions.font20 * 3 + Dimensions.font20 / 2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Sign into your account",
                              style: TextStyle(
                                fontSize: Dimensions.font20,
                                color: Colors.grey[500],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height20),

                      //your email
                      AppTextField(textController: emailController, hintText: "Email", icon: Icons.email),
                      SizedBox(height: Dimensions.height20),

                      //your password
                      AppTextField(textController: passwordController, hintText: "Password", icon: Icons.password_sharp, isObscure: true),
                      SizedBox(height: Dimensions.height20),
                      //tag line
                      Row(
                        children: [
                          Expanded(child: Container()),
                          RichText(
                            text: TextSpan(
                              text: "Sign into your account",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: Dimensions.font20,
                              ),
                            ),
                          ),
                          SizedBox(width: Dimensions.height20),
                        ],
                      ),
                      SizedBox(height: Dimensions.screenHeight * 0.05),
                      //sign in button
                      GestureDetector(
                        onTap: () {
                          _login(authController);
                        },
                        child: Container(
                          width: Dimensions.screenWidth / 2,
                          height: Dimensions.screenHeight / 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius30,
                            ),
                            color: AppColors.mainColor,
                          ),
                          child: Center(
                            child: BigText(
                              text: "Sign in",
                              size: Dimensions.font20 + Dimensions.font20 / 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.screenHeight * 0.05),

                      //sign up options
                      RichText(
                        text: TextSpan(
                          text: "Don\'t have an account?",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: Dimensions.font20,
                          ),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(
                                      () => SignUpPage(),
                                      transition: Transition.fade,
                                    ),
                              text: " Create",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainBlackColor,
                                fontSize: Dimensions.font20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : CustomLoader();
        }));
  }
}
