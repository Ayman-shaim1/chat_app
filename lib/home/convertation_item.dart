import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class Convertation extends StatelessWidget {
  const Convertation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
      child: Row(
        children: [
          Image.asset(
            "assets/img/image1.png",
            width: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeading("Jhon Doe"),
                StyledText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ")
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("12:00",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Text("2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
