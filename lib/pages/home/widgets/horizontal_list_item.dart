import 'package:advanced_ui_project1/pages/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({
    super.key,
    required this.data,
  });
  final HlistDataModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => DetailsScreen(data: data),
        ));
      },
      child: Container(
        width: 246.w,
        height: 349.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          gradient: LinearGradient(
            colors: [data.startLinear, data.endLinear],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SizedBox(
          height: 349.h,
          width: 246.w,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 15.h,
                left: 11.w,
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: data.statusColor,
                  ),
                  child: Text(
                    data.status,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Positioned(
                top: 80.h,
                left: 14.w,
                child: Text(
                  data.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 25.sp),
                ),
              ),
              Positioned(
                top: 111.h,
                left: 14.w,
                child: Text(
                  data.level,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 25.sp),
                ),
              ),
              Positioned(
                bottom: 0.h,
                right: 0.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.r),
                  ),
                  child: Image.asset(
                    data.backgroundImage,
                    height: 149.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.h,
                right: 0.w,
                child: Image.asset(
                  data.image,
                  width: 200.w,
                  height: 279.h,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
