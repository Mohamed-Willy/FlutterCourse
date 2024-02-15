import 'package:flutter/cupertino.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.onClick, required this.title});
  final Function()? onClick;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: const Color(0xFFeb1555),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: 60.0,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
