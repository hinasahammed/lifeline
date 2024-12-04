import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lifeline/res/components/common/custom_button.dart';
import 'package:lifeline/res/components/common/custom_textformfield.dart';

class PhoneAuthView extends StatefulWidget {
  const PhoneAuthView({super.key});

  @override
  State<PhoneAuthView> createState() => _PhoneAuthViewState();
}

class _PhoneAuthViewState extends State<PhoneAuthView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lifeline",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "Hi Welcome",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Create your account",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.5),
                        ),
                      ),
                      const Gap(40),
                      Text(
                        "Enter your phone number",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const Gap(10),
                      const CustomTextformfield(
                        prefixText: "+91",
                        fieldText: "Phone number",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                btnText: "Next",
              ),
            ),
            const Gap(20),
          ],
        ),
      )),
    );
  }
}
