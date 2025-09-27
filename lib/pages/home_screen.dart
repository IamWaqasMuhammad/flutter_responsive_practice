import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveRowColumn(
        columnPadding: EdgeInsets.all(18),
        layout: ResponsiveRowColumnType.COLUMN, // 👉 MOBILE
        columnMainAxisAlignment: MainAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(child: SizedBox(height: 60)),
          ResponsiveRowColumnItem(
            child: Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 60,
                width: 60,
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 60)),
          ResponsiveRowColumnItem(
            child: Center(
              child: Text(
                'Signin to your Account',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: ResponsiveValue(
                    context,
                    conditionalValues: [
                      Condition.smallerThan(name: MOBILE, value: 25.0),
                      Condition.largerThan(name: TABLET, value: 40.0),
                    ],
                    defaultValue: 16.0,
                  ).value,
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 60)),
          ResponsiveRowColumnItem(
            child: Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: ResponsiveValue(
                  context,
                  conditionalValues: [
                    Condition.smallerThan(name: MOBILE, value: 12.0),
                    Condition.largerThan(name: TABLET, value: 22.0),
                  ],
                  defaultValue: 16.0,
                ).value,
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 10)),
          ResponsiveRowColumnItem(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.grey.shade500,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black12, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black12, width: 2),
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 15)),
          ResponsiveRowColumnItem(
            child: Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: ResponsiveValue(
                  context,
                  conditionalValues: [
                    Condition.smallerThan(name: MOBILE, value: 12.0),
                    Condition.largerThan(name: TABLET, value: 22.0),
                  ],
                  defaultValue: 16.0,
                ).value,
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 10)),
          ResponsiveRowColumnItem(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: Colors.grey.shade500,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black12, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black12, width: 2),
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(child: SizedBox(height: 30)),
          ResponsiveRowColumnItem(
            child: Center(
              child: InkWell(
                onTap: () {
                  // Handle button tap
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  alignment: Alignment.center,
                  height: ResponsiveValue<double>(
                    context,
                    conditionalValues: [
                      Condition.smallerThan(name: MOBILE, value: 45.0),
                      Condition.largerThan(name: TABLET, value: 65.0),
                    ],
                    defaultValue: 55.0,
                  ).value,
                  width: ResponsiveValue<double>(
                    context,
                    conditionalValues: [
                      Condition.smallerThan(name: MOBILE, value: 100.0),
                      Condition.largerThan(name: TABLET, value: 450.0),
                    ],
                    defaultValue: 200.0,
                  ).value,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: ResponsiveValue<double>(
                        context,
                        conditionalValues: [
                          Condition.smallerThan(name: MOBILE, value: 14.0),
                          Condition.largerThan(name: TABLET, value: 20.0),
                        ],
                        defaultValue: 16.0,
                      ).value,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
