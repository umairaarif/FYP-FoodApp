import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    var signUpImages = ["t.png", "g.png", "f.png"];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  radius: 80,
                  backgroundColor: Colors.white,
                ),
              ),
            ),

            //your email
            AppTextField(textController: emailController, hintText: "Email", icon: Icons.email),
            SizedBox(height: Dimensions.height20),

            //your password
            AppTextField(textController: passwordController, hintText: "Password", icon: Icons.password_sharp),
            SizedBox(height: Dimensions.height20),

            //your name
            AppTextField(textController: nameController, hintText: "Name", icon: Icons.person),
            SizedBox(height: Dimensions.height20),

            //your phone
            AppTextField(textController: phoneController, hintText: "Phone", icon: Icons.phone),
            SizedBox(height: Dimensions.height20),

            //signUp button
            Container(
              width: Dimensions.screenWidth / 2,
              height: Dimensions.screenHeight / 13,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius30), color: AppColors.mainColor),
              child: Center(child: BigText(text: "Sign up", size: Dimensions.font20 + Dimensions.font20 / 2, color: Colors.white)),
            ),
            SizedBox(height: Dimensions.height10),

            RichText(
                text: TextSpan(recognizer: TapGestureRecognizer()..onTap = () => Get.back(), text: "Have an account already?", style: TextStyle(color: Colors.grey[500], fontSize: Dimensions.font20))),
            SizedBox(height: Dimensions.screenHeight * 0.05),

            //sign up options
            RichText(text: TextSpan(text: "Sign up using one of the following methods", style: TextStyle(color: Colors.grey[500], fontSize: Dimensions.font16))),
            Wrap(
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: Dimensions.radius30,
                          backgroundImage: AssetImage("assets/image/" + signUpImages[index]),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
