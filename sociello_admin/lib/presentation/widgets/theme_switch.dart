import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sociello_admin/application/theme/theme_bloc.dart';
import 'package:sociello_admin/core/constants/enums.dart';
import 'package:sociello_admin/presentation/widgets/gap.dart';

class ThemChangeButton extends StatelessWidget {
  const ThemChangeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return SizedBox(
          height: 35.sm,
          child: Row(
            children: [
              IconTheme(
                  data: Theme.of(context).iconTheme,
                  child: Icon(
                    state.isDark ? Icons.light_mode : Icons.dark_mode,
                    size: 20,
                  )),
              Gap(
                W: 10.sm,
              ),
              Text(
                state.isDark ? "Back to Light" : "Switch to Dark",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18.sm, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Builder(builder: (context) {
                bool sValue = state.isDark ? true : false;
                return Switch(
                    value: sValue,
                    onChanged: (value) async {
                      if (value) {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ChangeTheme(changeTo: MyThemeMode.dark));
                      } else {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ChangeTheme(changeTo: MyThemeMode.light));
                      }
                    });
              }),
            ],
          ),
        );
      },
    );
  }
}

class ThemeSwitchButtom extends StatelessWidget {
  const ThemeSwitchButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Builder(builder: (context) {
          bool sValue = state.isDark ? true : false;
          return Switch(
              value: sValue,
              onChanged: (value) async {
                // await UserDataStore.saveUserData(
                //     id: "8f5fd4ab-1783-4e59-a5f3-5287789a727a",
                //     email: "shibilhassank2002@gmail.com",
                //     name: "Shibil Hassan K");
                if (value) {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ChangeTheme(changeTo: MyThemeMode.dark));
                } else {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ChangeTheme(changeTo: MyThemeMode.light));
                }
              });
        });
      },
    );
  }
}
