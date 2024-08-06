import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ofrcima_flutter/app/core/constants/images_constant.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetpath ;

  const SignInButton({required this.onPressed, Key? key,required this.assetpath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 68,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                  child: Center(
                    child: SvgPicture.asset(
                                  assetpath
                                ),
                  )),
              
             
            ],
          ),
        ),
      ),
    );
  }
}
