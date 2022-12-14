import 'package:advanced_ui_project1/core/colors.dart';
import 'package:advanced_ui_project1/pages/details/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.data});
  final HlistDataModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: null,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.r),
                    bottomRight: Radius.circular(25.r),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      data.startLinear,
                      data.endLinear,
                    ],
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: 0.h,
                      right: -30.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.r),
                          bottomRight: Radius.circular(25.r),
                        ),
                        child: Image.asset(
                          data.backgroundImage,
                          width: 200.w,
                          height: 200.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.h,
                      right: -50.w,
                      child: Image.asset(
                        data.image,
                        width: 300.w,
                        height: 300.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.zero,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        '${data.title} ${data.level}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 25,
                            ),
                      ),
                      SizedBox(height: 29.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 130.w,
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Image.asset(
                                  'assets/icons/avatar4.png',
                                  width: 45.w,
                                  height: 45.w,
                                ),
                                Positioned(
                                  left: 25,
                                  child: Image.asset(
                                    'assets/icons/avatar3.png',
                                    width: 45.w,
                                    height: 45.w,
                                  ),
                                ),
                                Positioned(
                                  left: 50,
                                  child: Image.asset(
                                    'assets/icons/avatar2.png',
                                    width: 45.w,
                                    height: 45.w,
                                  ),
                                ),
                                Positioned(
                                  left: 75,
                                  child: Image.asset(
                                    'assets/icons/avatar1.png',
                                    width: 45.w,
                                    height: 45.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '+28K Members',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color(0xffCACACA),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Container(
                            width: 54.w,
                            height: 47.h,
                            // padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: const Color(0xff353567),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Image.asset('assets/icons/like.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 52.h),
                      Expanded(
                        child: ListView.separated(
                          itemCount: dataList.length,
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 22.h),
                          itemBuilder: (context, index) => ListItemWidget(
                            model: dataList[index],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<ListDataModel> dataList = [
  ListDataModel(
    'Introduction Design Graphic',
    '12 Minutes',
    'assets/details_list_imgs/item1.png',
    true,
    true,
    const Color(0xffDB61A1),
  ),
  ListDataModel(
    'Fundamental of Design',
    '16 Minutes',
    'assets/details_list_imgs/item2.png',
    false,
    false,
    const Color(0xffF4C465),
  ),
  ListDataModel(
    'Layout Design',
    '10 Minutes',
    'assets/details_list_imgs/item3.png',
    false,
    true,
    const Color(0xff326AA5),
  ),
  ListDataModel(
    'Introduction Design Graphic',
    '12 Minutes',
    'assets/details_list_imgs/item1.png',
    true,
    true,
    const Color(0xffDB61A1),
  ),
  ListDataModel(
    'Layout Design',
    '10 Minutes',
    'assets/details_list_imgs/item3.png',
    false,
    false,
    const Color(0xff326AA5),
  ),
];

class ListDataModel {
  final String title, time, image;
  final bool isFree, isSelected;
  final Color bgroundClr;

  ListDataModel(
    this.title,
    this.time,
    this.image,
    this.isFree,
    this.isSelected,
    this.bgroundClr,
  );
}
