import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenss_item.dart';

class AllExpeneseItemListView extends StatefulWidget {
  const AllExpeneseItemListView({super.key});

  @override
  State<AllExpeneseItemListView> createState() =>
      _AllExpeneseItemListViewState();
}

class _AllExpeneseItemListViewState extends State<AllExpeneseItemListView> {
  final items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'November 2024',
        price: r'$20,129'),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'November 2024',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'November 2024',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(0),
            child: AllExpenssItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(1),
            child: AllExpenssItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(2),
            child: AllExpenssItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
