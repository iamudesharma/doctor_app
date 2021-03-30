import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class Doctor extends StatelessWidget {
  final String image;
  final String dcname;
  final String honame;
  final int tag;

  const Doctor({Key key, this.image, this.dcname, this.honame, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          // fit: StackFit.loose,
          children: [
            Image.asset(
              'assets/images/detail_illustration.png',
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white54.withOpacity(0.2),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      height: 20,
                      width: 20,
                    ).p12(),
                  ).p8(),
                ),
                SvgPicture.asset(
                  'assets/icons/3dots.svg',
                  height: 20,
                  width: 20,
                ).p8()
              ],
            ).pSymmetric(h: 15.0),
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: tag,
                            child: Image.asset(image)
                                .box
                                .height(80)
                                .width(80)
                                .roundedLg
                                .make(),
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dcname,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ).text.capitalize.bold.make(),
                              honame.text.xs.maxLines(2).capitalize.make(),
                              5.heightBox,
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/phone.svg')
                                      .p8()
                                      .box
                                      .indigo100
                                      .shadowSm
                                      .roundedSM
                                      .make(),
                                  5.widthBox,
                                  SvgPicture.asset('assets/icons/chat.svg')
                                      .p8()
                                      .box
                                      .orange100
                                      .shadowSm
                                      .roundedSM
                                      .make(),
                                  5.widthBox,
                                  SvgPicture.asset('assets/icons/video.svg')
                                      .p8()
                                      .box
                                      .red100
                                      .shadowSm
                                      .roundedSM
                                      .make()
                                ],
                              )
                            ],
                          )
                        ],
                      ).pSymmetric(h: 10, v: 10.0),
                      5.heightBox,
                      'About Doctor'.text.xl.bold.make().p8().shimmer(
                          primaryColor: Vx.black,
                          secondaryColor: Colors.black54),
                      "$dcname a doctor is someone who maintains or restores human health through the practice of medicine. He or she faces the challenge of diagnosing and treating human disease, ailments, injuries,pain or other conditions."
                          .text
                          .capitalize
                          .letterSpacing(1.3)
                          .maxLines(7)
                          .xs
                          .make()
                          .p8(),
                      7.heightBox,
                      'Upcoming Schedules'.text.xl.bold.make().p8()
                        ..shimmer(
                            primaryColor: Vx.black,
                            secondaryColor: Colors.black54),
                      7.heightBox,
                      VxBox(
                        child: Row(
                          children: [
                            '12\nJan'
                                .text
                                .indigo600
                                .make()
                                .p8()
                                .box
                                .height(43)
                                .indigo300
                                .width(43)
                                .roundedSM
                                .makeCentered(),
                            10.widthBox,
                            Column(
                              children: [
                                'Consultation'.text.bold.make(),
                                'Sunday 9am-11am'.text.make()
                              ],
                            )
                          ],
                        ).pSymmetric(h: 15),
                      )
                          .height(60)
                          .width(double.infinity)
                          .indigo100
                          .roundedSM
                          .make()
                          .pSymmetric(h: 15),
                      10.heightBox,
                      VxBox(
                        child: Row(
                          children: [
                            '12\nJan'
                                .text
                                .indigo600
                                .make()
                                .p8()
                                .box
                                .height(43)
                                .indigo300
                                .width(43)
                                .roundedSM
                                .makeCentered(),
                            10.widthBox,
                            Column(
                              children: [
                                'Consultation'.text.bold.make(),
                                'Sunday 9am-11am'.text.make()
                              ],
                            )
                          ],
                        ).pSymmetric(h: 15),
                      )
                          .height(60)
                          .width(double.infinity)
                          .indigo100
                          .roundedSM
                          .make()
                          .pSymmetric(h: 15),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                ).pOnly(top: MediaQuery.of(context).size.height * 0.36),
              ),
            )
          ],
        ),
      )),
    );
  }
}
