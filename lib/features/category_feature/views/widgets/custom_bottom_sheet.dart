import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/features/category_feature/views/category_page.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Column(
        children: [
          const Text(
            'Select Category',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              decoration: TextDecoration.underline
            ),
          ),
          const Spacer(),
          Column(
            children: [
              DropdownButton(
                hint: const Text('Category'),
                value: category,
                items: const [
                  DropdownMenuItem(
                    value: "men's clothing",
                    child: Text("men's clothing"),
                  ),
                  DropdownMenuItem(
                    value: "jewelery",
                    child: Text("jewelery"),
                  ),
                  DropdownMenuItem(
                    value: "electronics",
                    child: Text("electronics"),
                  ),
                  DropdownMenuItem(
                    value: "women's clothing",
                    child: Text("women's clothing"),
                  ),
                ],
                onChanged: (cat) {
                  setState(() {
                    category = cat;
                  });
                },
              ),
              CustomButton(
                  title: "Show Category Items",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, CategoryPage.route,
                        arguments: category);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
