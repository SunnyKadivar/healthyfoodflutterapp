import 'package:flutter/material.dart';
import 'package:healthyfood/Constants/app_constants.dart';
import 'package:healthyfood/CustomWidget/rating_widget.dart';
import 'package:healthyfood/CustomWidget/timer.dart';
import 'package:healthyfood/Provider/theme_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/soup.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.5),
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: themeProvider.darkTheme
                    ? AppConstants.appColorBlack
                    : AppConstants.appColorWhite,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Roasted salmon with vegetables',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RatingWidget(themeProvider: themeProvider),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          '325 catories',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CustomTimer(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppConstants.appCOlorPlaceHolder),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Ingredients',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                                width: 50,
                                padding: const EdgeInsetsDirectional.all(10),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/images/tometo.png',
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            AppConstants.appCOlorPlaceHolder),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 20, color: appColorPrimary),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: AppConstants.appCOlorPlaceHolder),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            AppConstants.appCOlorPlaceHolder),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 20, color: appColorPrimary),
                                    ),
                                  ),
                                ),
                              ),
    
                            ],
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Expanded(child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: appColorPrimary,
                            borderRadius: BorderRadius.circular(30)
                           ),
                          child: const Center(child: Text('order for \$23.2',style: TextStyle(color: AppConstants.appColorWhite,fontSize: 20,fontWeight: FontWeight.w500),)),
                        ),)
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 320,
              right: 40,
              child: Container(
                height: 50,
                width:50,
                decoration: BoxDecoration(
                  color:appColorPrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border)),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Container(
                height: 50,
                width:50,
                decoration: BoxDecoration(
                  color: themeProvider.darkTheme? AppConstants.appColorBlack.withOpacity(0.7):AppConstants.appColorWhite.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },icon: const Icon(Icons.arrow_back,color: AppConstants.appColorOrange,),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
