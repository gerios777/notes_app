import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              child: CircleAvatar(backgroundColor: color, radius: 34),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(backgroundColor: color, radius: 38),
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];

              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index ? true : false,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
