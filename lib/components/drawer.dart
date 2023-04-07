import 'package:animate_do/animate_do.dart';
import 'package:dental/views/all_appointments.dart';
import 'package:dental/views/main_screen.dart';
import 'package:dental/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ensmile'),
              accountEmail: Text('ensmile@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'ES',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllAppointmentsScreen()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Appointments",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Visits",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Subscription",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "About Ensmile",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              trailing: Icon(
                CupertinoIcons.forward,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.1,
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
