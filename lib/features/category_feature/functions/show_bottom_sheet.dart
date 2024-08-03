import 'package:flutter/material.dart';
import 'package:store_app/features/category_feature/views/widgets/custom_bottom_sheet.dart';

void showCustomSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    builder: (ctx) {
      return const CustomBottomSheet();
    },
  );
}
