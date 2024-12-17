import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final bool isBackground;
  final Color? textColor;

  const ButtonWidget({
    super.key,
    required this.name,
    required this.onTap,
    this.isBackground = false,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 16.5),
        decoration: BoxDecoration(
          border: Border.all(
              color: isBackground ? Color(0xFF006FFD) : Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          color: isBackground ? Colors.white : Color(0xFF006FFD),
        ),
        child: Text(
          name,
          style: TextStyle(
            color:
                textColor ?? (isBackground ? Color(0xFF006FFD) : Colors.white),
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
