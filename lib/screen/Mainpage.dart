import 'package:doctor_app/screen/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import '../componet.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/menu.svg'),
                  SvgPicture.asset('assets/icons/profile.svg')
                ],
              ).pSymmetric(h: 10),
              10.heightBox,
              "find your desired\ndoctor"
                  .text
                  .black
                  .capitalize
                  .xl3
                  .extraBold
                  .make()
                  .shimmer(
                      primaryColor: Vx.black, secondaryColor: Colors.black54)
                  .pSymmetric(h: 15),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VxBox(
                    child: 'Search for doctor'
                        .text
                        .color(Colors.grey)
                        .makeCentered(),
                  )
                      .withRounded(value: 30.0)
                      .height(30)
                      .width(180)
                      .color(Colors.grey.shade200)
                      .makeCentered(),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 4,
                    width: 5,
                  )
                      .p4()
                      .box
                      .height(30)
                      .width(50)
                      .withRounded(value: 30.0)
                      .red600
                      .make()
                ],
              ).pSymmetric(h: 15),
              15.heightBox,
              'Categories'.text.semiBold.xl.make().pSymmetric(h: 15).shimmer(
                  primaryColor: Vx.black, secondaryColor: Colors.black54),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListMain(
                      color: Colors.redAccent,
                      image: 'assets/icons/dental_surgeon.png',
                      name: 'Dental\nSurgeon',
                    ),
                    ListMain(
                      color: Colors.yellowAccent,
                      image: 'assets/icons/heart_surgeon.png',
                      name: 'Heart\nSurgeon',
                    ),
                    ListMain(
                      color: Colors.indigoAccent,
                      image: 'assets/icons/eye_specialist.png',
                      name: 'Eye\nSurgeon',
                    ),
                  ],
                ).pSymmetric(h: 10),
              ),
              15.heightBox,
              'Top Doctor'
                  .text
                  .black
                  .semiBold
                  .xl
                  .make()
                  .pSymmetric(h: 15)
                  .shimmer(
                      primaryColor: Vx.black, secondaryColor: Colors.black54),
              10.heightBox,
              ListDoctor(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Doctor(
                      tag: 14,
                      image: 'assets/images/doctor1.png',
                      dcname: 'dr. stella kane',
                      honame: 'heart surgeon - flower hospitals',
                    );
                  }));
                },
                color: Colors.indigoAccent.shade100.withOpacity(0.3),
                tag: 14,
                image: 'assets/images/doctor1.png',
                dcname: 'dr. stella kane',
                honame: 'heart surgeon - flower hospitals',
              ),
              10.heightBox,
              ListDoctor(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Doctor(
                      tag: 13,
                      image: 'assets/images/doctor2.png',
                      dcname: 'dr. joseph cart',
                      honame: 'dental surgeon - flower hospitals',
                    );
                  }));
                },
                tag: 13,
                color: Colors.redAccent.shade100.withOpacity(0.3),
                image: 'assets/images/doctor2.png',
                dcname: 'dr. joseph cart',
                honame: 'dental surgeon - flower hospitals',
              ),
              10.heightBox,
              ListDoctor(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Doctor(
                      tag: 12,
                      image: 'assets/images/doctor3.png',
                      dcname: 'dr. stephanie',
                      honame: 'eye specialist surgeon - flower \nhospitals',
                    );
                  }));
                },
                tag: 12,
                color: Colors.orangeAccent.shade100.withOpacity(0.3),
                image: 'assets/images/doctor3.png',
                dcname: 'dr. stephanie',
                honame: 'eye specialist surgeon - flower \nhospitals',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

