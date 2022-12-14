import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({super.key, required this.data});
  final VListDataModel data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 360.w,
          height: 92.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: const Color(0xff3E3A6D),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 165.w),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.title,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        Text(
                          data.time,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff8C8C8C),
                                  ),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25.h,
                          itemPadding: EdgeInsets.zero,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 10,
                          ),
                          onRatingUpdate: (rating) {
                            log(rating.toString());
                          },
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: -12.w,
                  top: 30.h,
                  child: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: const Color(0xffEB53A2),
                    child: Icon(
                      Icons.play_arrow,
                      size: 20.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -20.h,
          left: 20.w,
          child: Container(
            width: 140.h,
            height: 90.h,
            decoration: BoxDecoration(
              color: data.bgroundColor,
              image: DecorationImage(
                image: AssetImage(data.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ],
    );
  }
}
