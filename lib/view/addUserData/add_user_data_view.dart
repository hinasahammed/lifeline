import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lifeline/res/components/addUserData/add_user_data_components.dart';
import 'package:lifeline/res/components/common/custom_button.dart';
import 'package:lifeline/res/components/common/custom_dropdown_field.dart';
import 'package:lifeline/res/components/common/custom_textformfield.dart';
import 'package:lifeline/view/addUserData/widget/profile_card.dart';

class AddUserDataView extends StatefulWidget {
  const AddUserDataView({super.key});

  @override
  State<AddUserDataView> createState() => _AddUserDataViewState();
}

class _AddUserDataViewState extends State<AddUserDataView> {
  String? selectedGender;
  String? selectedBloodGroup;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Your Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: ProfileCard(
                onPressed: () {},
              ),
            ),
            const Gap(20),
            Text(
              "Enter your name",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(
              fieldText: "Full Name",
            ),
            const Gap(10),
            Text(
              "Gender",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            CustomDropdownField(
              onChanged: (newValue) {},
              items: genderItems,
              value: selectedGender,
              dropdownName: "Select Gender",
            ),
            const Gap(10),
            Text(
              "Blood Group",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            CustomDropdownField(
              onChanged: (newValue) {},
              items: bloodGroupItems,
              value: selectedBloodGroup,
              dropdownName: "Select Blood Group",
            ),
            const Gap(10),
            Text(
              "Date of Birth",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            CustomTextformfield(
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text("Pick Date"),
              ),
              fieldText: "DD/MM/YYYY",
            ),
            const Gap(10),
            Text(
              "Location",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(
              fieldText: "Your location",
            ),
            const Gap(10),
            Container(
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(.5))),
              child: const Text("No location selected"),
            ),
            const Gap(20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(
                onPressed: () {},
                btnText: "Save",
              ),
            )
          ],
        ),
      ),
    );
  }
}
