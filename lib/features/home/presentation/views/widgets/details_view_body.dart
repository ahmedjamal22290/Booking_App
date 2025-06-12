import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: DetailsImageSection(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 26.23,
                ),
              ),
              SliverToBoxAdapter(
                child: AboutSection(),
              ),
              SliverToBoxAdapter(
                child: ServiceSection(),
              ),
            ],
          ),
        ),
        Container(
          height: (50.86 / 594.99) * MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -0.5),
              blurRadius: 20,
              spreadRadius: 2,
            )
          ]),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 11.73, vertical: 9.12),
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
                Spacer(),
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
          ),
        )
      ],
    );
  }
}
