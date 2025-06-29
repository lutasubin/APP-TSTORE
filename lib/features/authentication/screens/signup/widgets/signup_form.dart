import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              SizedBox(height: TSizes.spaceBtwInputFields),

              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          ///Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),

          //email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          //phone number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          //password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffix: Icon(Iconsax.eye_slash),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          //checkbox
          TTermsAndConditionCheckbox(),

          SizedBox(height: TSizes.spaceBtwSections),

          //sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
