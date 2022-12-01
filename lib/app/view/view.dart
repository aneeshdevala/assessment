import 'package:assesment/app/controller.dart';
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
            toolbarHeight: 35,
            leading: const CircleAvatar(),
            actions: const [
              Icon(Icons.menu),
              Icon(Icons.notification_add_outlined),
              Icon(Icons.search)
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
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
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
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
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
                                    width: MediaQuery.of(context).size.width *
                                        0.48,
                                    decoration: const BoxDecoration(
                                        color: kcGreen,
                                        borderRadius: BorderRadius.only(
                                            //topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                    child: const Center(child: Text('Accept')),
                                  ),
                                  Container(
                                    height: 44,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: const BoxDecoration(
                                        color: kcLightGreyColor,
                                        borderRadius: BorderRadius.only(
                                            // topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: const Center(child: Text('Reject')),
                                  )
                                ],
                              )
                            ],
                          ),
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
