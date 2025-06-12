import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.73, vertical: 9.12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'price estimate',
                style: Styles.description1.copyWith(
                  color: const Color(0xff787878),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    r'$' '480',
                    style: Styles.itemsTitleStyle.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '/night',
                    style: Styles.itemsTitleStyle.copyWith(
                        fontSize: 13.2,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff787878)),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 40.63,
            width: 111.72,
            decoration: BoxDecoration(
              color: Constants.buttonsMainColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Text(
                'Reverse Now',
                style: Styles.buttonText2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
