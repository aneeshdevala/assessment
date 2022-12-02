import 'package:assesment/app/theme/appcolors.dart';
import 'package:assesment/app/theme/whitespaces.dart';
import 'package:assesment/app/widget/cardsutils.dart';
import 'package:assesment/app/widget/heading2.dart';
import 'package:assesment/app/widget/sliverheader.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'New leads',
      'Initial Meeting',
      'Discovery Consultation'
    ];
//final homepro = Provider.of<HomeController>(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kcWhite,
            toolbarHeight: 35,
            leading: const CircleAvatar(
              radius: 15,
              backgroundColor: kcPrimary,
              child: Icon(
                Icons.person,
                color: kcBlack,
                size: 15,
              ),
            ),
            actions: const [
              Icon(
                Icons.menu,
                color: kcBlack,
              ),
              Icon(
                Icons.notification_add_outlined,
                color: kcBlack,
              ),
              Icon(
                Icons.search,
                color: kcBlack,
              ),
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              SliverPersistentHeader(
                delegate: Delegate(
                  'toggle button',
                ),
              ),
              SliverPersistentHeader(
                delegate: Delegate2(),
              ),
            ],
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ChoiceChip(
                          labelPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          label: Text(
                            options[index],
                            style: const TextStyle(
                                color: kcSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          surfaceTintColor: kcPrimary,
                          padding: EdgeInsets.zero,
                          selected: 0 == index,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(color: kcPrimary)),
                          backgroundColor: kcWhite,
                          selectedColor: Colors.blue,
                          onSelected: (bool selected) {},
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    //scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  color: kcWhite,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 380,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 6,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ListTile(
                                        leading: Image.asset(
                                            CardsUtils.leadIcon[index],
                                            height: 25,
                                            width: 25),
                                        title: Text(CardsUtils.titles[index]),
                                      );
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 44,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.49,
                                        decoration: const BoxDecoration(
                                            color: kcGreen,
                                            borderRadius: BorderRadius.only(
                                                //topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child:
                                            const Center(child: Text('Accept')),
                                      ),
                                      Container(
                                        height: 44,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                            color: kcLightGreyColor,
                                            borderRadius: BorderRadius.only(
                                                // topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
                                        child:
                                            const Center(child: Text('Reject')),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 60,
                                right: 20,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: kcWhite,
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: kcGreen, width: 2)),
                                  child: Column(
                                    children: const [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage('assets/avatar1.jpg'),
                                      ),
                                      vSpaceMin,
                                      Icon(
                                        Icons.arrow_upward,
                                        color: kcGreen,
                                      ),
                                      vSpaceMin,
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage('assets/avatar2.jpeg'),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
    //  );
  }
}
