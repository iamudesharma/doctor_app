import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ListMain extends StatelessWidget {
  final String name;
  final String image;
  final Color color;

  ListMain({Key key, this.image, this.name, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            bottom: 0,
            left: 0.0,
            right: 50,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 6,
                          color: Colors.grey.shade100),
                      BoxShadow(
                          offset: Offset(3, 5),
                          blurRadius: 9,
                          color: Colors.grey.shade200),
                      BoxShadow(
                          offset: Offset(10, 0),
                          blurRadius: 9,
                          color: Colors.grey.shade200),
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0, top: 15),
            child: Image.asset(
              image,
              width: 150,
            ).box.color(color).width(60).roundedSM.make(),
          ),
          5.heightBox,
          Positioned(bottom: 30, right: 75, child: name.text.make())
        ],
      ),
    );
  }
}

class ListDoctor extends StatelessWidget {
  final String image;
  final Color color;
  final String dcname;
  final String honame;
  final Function press;
  final int tag;

  ListDoctor(
      {Key key, this.image, this.color, this.dcname, this.honame, this.press,this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: VxBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                tag: tag,
                child: Image.asset(image)
                    .box
                    .height(50)
                    .width(50)
                    .roundedLg
                    .make()),
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
                honame.text.xs.maxLines(2).capitalize.make()
              ],
            )
          ],
        ).pSymmetric(h: 10),
      )
          .width(double.infinity)
          .color(color)
          .withRounded(value: 15.0)
          .height(70)
          .make()
          .pSymmetric(h: 25),
    );
  }
}
