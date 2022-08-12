
import 'package:flutter/material.dart';

import '../../Styles/colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: AppColors.darkGreen),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.darkGreen,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            const SettingsItem(title: "Theme", subtitle: "Light Mode"),
            const SizedBox(height: 12),
            ..._dividerWidgets,
            const SizedBox(height: 12),
            const SettingsItem(
                title: "Transaction Authorization Method", subtitle: "Use PIN"),
            const SizedBox(height: 12),
            ..._dividerWidgets,
            const SizedBox(height: 12),
            const SettingsItem(title: "Security"),
            const SizedBox(height: 12),
            ..._dividerWidgets,
            const SizedBox(height: 12),
            const SettingsItem(title: "Cards"),
            const SizedBox(height: 12),
            ..._dividerWidgets,
            const SizedBox(height: 12),
            const SettingsItem(title: "Hide Account Balance",
              isCheckbox: true,
            ),
            const SizedBox(height: 12),
            ..._dividerWidgets,
            const SizedBox(height: 12),
            const SettingsItem(title: "Logout"),
          ],
        ),
      ),
    );
  }

  List<Widget> get _dividerWidgets => [
    const SizedBox(height: 12),
    const Divider(color: AppColors.grey20, thickness: 1),
    const SizedBox(height: 12),
  ];
}

class SettingsItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool isCheckbox;

  const SettingsItem({
    Key? key,
    required this.title,
    this.subtitle,
    this.isCheckbox = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7))),
        tileColor: AppColors.grey20.withOpacity(0.4),
        title: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(title, style: TextStyles.semiBold(14, AppColors.grey100)),
        ),
        subtitle: subtitle == null
            ? null
            : Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Text(
              subtitle!,
              style: TextStyles.semiBold(10, AppColors.grey100),
            ),
          ),
        ),
        trailing: isCheckbox
            ? Switch(
          value: false,
          onChanged: (value) {},
          activeTrackColor: AppColors.darkGreen,
          activeColor: AppColors.otpFieldBgColor,
        )
            : const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.darkGreen,
        ),
      ),
    );
  }
}
