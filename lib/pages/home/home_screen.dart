import 'package:advanced_ui_project1/core/colors.dart';
import 'package:advanced_ui_project1/pages/home/widgets/horizontal_list_item.dart';
import 'package:advanced_ui_project1/pages/home/widgets/vertical_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 55.h),
              Text(
                'Online',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 11.h),
              Text(
                'Master Class',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 22.h),
              SizedBox(
                height: 349.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      HorizontalListItem(data: items[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 26.w),
                  itemCount: items.length,
                ),
              ),
              SizedBox(height: 34.h),
              Text(
                'Free online class',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(height: 8.h),
              Text(
                'From over 80 Lectures',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff9C9A9A),
                    ),
              ),
              SizedBox(height: 12.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    VerticalListItem(data: vitems[index]),
                separatorBuilder: (context, index) => SizedBox(height: 30.h),
                itemCount: vitems.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<HlistDataModel> items = [
    HlistDataModel(
      status: 'Recomended',
      title: 'UI/UX DESIGNER',
      level: 'BEGINNER',
      image: 'assets/h_list_images/img1.png',
      backgroundImage: 'assets/h_list_images/img2.png',
      startLinear: const Color(0xff9288E4),
      endLinear: const Color(0xff534EA7),
      statusColor: const Color(0xffAFA8EE),
    ),
    HlistDataModel(
      status: 'NEW CLASS',
      title: 'GRAPHIC DESIGN',
      level: 'MASTER',
      image: 'assets/h_list_images/img3.png',
      backgroundImage: 'assets/h_list_images/img4.png',
      startLinear: const Color(0xffF4C465),
      endLinear: const Color(0xffC63956),
      statusColor: const Color(0xffF4C67A),
    ),
  ];
  final List<VListDataModel> vitems = [
    VListDataModel(
      'Flutter Developer',
      '8 Hours',
      'assets/v_list_images/img1.png',
      const Color(0xffFFB4B4),
    ),
    VListDataModel(
      'Full Stack Javascript',
      '6 Hours',
      'assets/v_list_images/img2.png',
      const Color(0xffCCB4FF),
    ),
  ];
}

class HlistDataModel {
  final String status, title, level, image, backgroundImage;
  final Color startLinear, endLinear, statusColor;

  HlistDataModel({
    required this.status,
    required this.title,
    required this.image,
    required this.level,
    required this.backgroundImage,
    required this.startLinear,
    required this.endLinear,
    required this.statusColor,
  });
}

class VListDataModel {
  final String title, time, image;
  final Color bgroundColor;

  VListDataModel(this.title, this.time, this.image, this.bgroundColor);
}
