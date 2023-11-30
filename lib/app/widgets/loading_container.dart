import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({
    super.key,
    required this.show,
    required this.totalData,
    required this.listLength
  });

  final bool show;
  final int totalData;
  final int listLength;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: show ? 36 : 0,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Text(totalData == listLength
            ? "No More Items"
            : "Loading more Items..."),
      ),
    );
  }
}
