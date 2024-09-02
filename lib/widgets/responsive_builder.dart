import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/screen/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet ;
  final Widget mobile;
   ResponsiveBuilder({super.key, required this.mobile,required this.desktop, this.tablet,});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final DeviceType deviceType=ScreenUtils.getDeviceType(size.width);
    if(deviceType==DeviceType.mobile){
      return mobile;
    }else if(deviceType==DeviceType.tablet){
      return tablet??mobile;
    }
    return desktop ;
  }
}

