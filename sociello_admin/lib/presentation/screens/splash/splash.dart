import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sociello_admin/core/colors/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
    return Scaffold(
      body: Container(
        color: primaryColor.withOpacity(0.2),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/bg/SocielloSplashBg.png'),
            SizedBox(
              height: 20.sm,
              width: 20.sm,
              child: CircularProgressIndicator(
                color: primaryColor,
                strokeWidth: 2.sm,
              ),
            )
          ],
        )),
      ),
    );
  }
}
