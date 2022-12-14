import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../details_screen.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key, required this.model});
  final ListDataModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.w,
      height: 82.h,
      decoration: BoxDecoration(
          color:
              model.isSelected ? const Color(0xff3E3A6D) : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        children: [
          Container(
            width: 80.w,
            decoration: BoxDecoration(
              color: model.bgroundClr,
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.fitWidth,
                scale: 2,
              ),
            ),
            // child: Image.asset(
            //  model.image,
            //   width: 80.w,
            //   fit: BoxFit.fitWidth,
            // ),
          ),
          SizedBox(width: 20.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18.sp,
                    ),
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Text(
                    model.time,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14.sp,
                          color: const Color(0xff8C8C8C),
                        ),
                  ),
                  SizedBox(width: 10.w),
                  if (model.isFree)
                    Container(
                      alignment: Alignment.center,
                      width: 39.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffEB53A2),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Text(
                        'Free',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
