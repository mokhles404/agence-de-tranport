import 'package:admin_citygo/controllers/home/home_controller.dart';
import 'package:admin_citygo/utils/common_widget.dart';
import 'package:admin_citygo/utils/images_strings.dart';
import 'package:admin_citygo/view/home/home_screen.dart';
import 'package:admin_citygo/view/welcome_screen/welcome_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashSreeen extends StatefulWidget {
  const SplashSreeen({Key? key}) : super(key: key);

  @override
  State<SplashSreeen> createState() => _SplashSreeenState();
}
HomeController homeController =Get.put(HomeController());

class _SplashSreeenState extends State<SplashSreeen> {

  @override
  void initState() {
    super.initState();
    if(homeController.box.read("email")!=null)
      Get.to(()=>HomeScreen());
    else
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3000),(){}).then((value) =>
     Get.offAll(()=>WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ImageContainer(
          height: height,
          child:  Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(
                    top: height*0.45,
                    bottom:(height/2)-175
                ),
                child:Image(image: AssetImage(tBTTLogo)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(tCityGoLogo),width: 100,height: 100,),
                  Image(image: AssetImage(tTunPro),width: 100,height: 100,),
                  Image(image: AssetImage(tBBXLogo),width: 70,height: 70,),
                ],
              )
            ],
          ),
      ),
    );
  }
}




