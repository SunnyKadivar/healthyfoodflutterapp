import 'package:flutter/material.dart';
import 'package:healthyfood/Constants/app_constants.dart';
import 'package:healthyfood/CustomWidget/timer.dart';
import 'package:healthyfood/Provider/theme_provider.dart';
import 'package:healthyfood/Screens/detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
        actions: [
          Center(
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Switch(
                    value: themeProvider.darkTheme,
                    onChanged: (value) {
                      themeProvider.toggleTheme();
                    });
              },
            ),
          ),
          Center(
            child: Stack(
              children: [
                const Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: AppConstants.appColorOrange,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        '3',
                        style: TextStyle(
                            color: AppConstants.appColorWhite, fontSize: 10),
                      )),
                    ))
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'assets/images/profile.jpg',
                height: 40,
                width: 40,
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Let\'s Eat\nHealthy Food',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    child: Consumer<ThemeProvider>(
                        builder: (context, themeProvider, child) {
                      return Container(
                        width: 60,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: index == 0
                                ? appColorPrimary
                                : themeProvider.darkTheme
                                    ? AppConstants.appColorLightBlack
                                    : AppConstants.appColorWhite,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: -4.0,
                                color: AppConstants.appColorGrey,
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: themeProvider.darkTheme
                                      ? AppConstants.appColorLightBlack
                                      : AppConstants.appColorWhite,
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.coffee_maker_outlined,
                                  color: themeProvider.darkTheme
                                      ? AppConstants.appColorWhite
                                      : AppConstants.appColorBlack),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Salads',
                              style: TextStyle(
                                  color: index == 0
                                      ? themeProvider.darkTheme
                                          ? AppConstants.appColorBlack
                                          : AppConstants.appColorWhite
                                      : themeProvider.darkTheme
                                          ? AppConstants.appColorWhite
                                          : AppConstants.appColorBlack),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Dishes',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: const [
                      Text(
                        'View All',
                        style: TextStyle(
                            color: AppConstants.appColorOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: AppConstants.appColorOrange,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 200,
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("assets/images/soup.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Positioned(
                                  top: 10,
                                  left: 10,
                                  child: CustomTimer(),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Pumpkin soup',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Dummuy Description',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: AppConstants.appCOlorPlaceHolder),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: appColorPrimary,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      '\$7,2',
                                      style: TextStyle(
                                          color: AppConstants.appColorWhite,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    )),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellow.shade700),
                                    Consumer<ThemeProvider>(builder:
                                        (context, themeProvider, child) {
                                      return RichText(
                                        text: TextSpan(
                                          text: '4,8',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: themeProvider.darkTheme
                                                  ? AppConstants.appColorWhite
                                                  : AppConstants.appColorBlack),
                                          children: const <TextSpan>[
                                            TextSpan(
                                                text: ' (18)',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppConstants
                                                        .appCOlorPlaceHolder)),
                                          ],
                                        ),
                                      );
                                    })
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Text(
                'Discover New Places',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    child: Container(
                        width: 80,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/images/clogo.png',
                          fit: BoxFit.cover,
                        )),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
