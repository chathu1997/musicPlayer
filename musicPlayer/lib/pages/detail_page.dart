import 'package:flutter/material.dart';
import 'package:musicPlayer/core/const.dart';
import 'package:musicPlayer/widgets/custom_button_widget.dart';
import 'package:musicPlayer/widgets/custom_progress_widget.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButtonWidget(
                  size: 50,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.styleColor,
                  ),
                ),
                Text(
                  "PLATING NOW",
                  style: TextStyle(
                      color: AppColors.styleColor, fontWeight: FontWeight.bold),
                ),
                CustomButtonWidget(
                  size: 50,
                  onTap: () {},
                  child: Icon(
                    Icons.menu,
                    color: AppColors.styleColor,
                  ),
                )
              ],
            ),
          ),
          CustomButtonWidget(
            image: "assets/logo.jpg",
            size: MediaQuery.of(context).size.width * .7,
            borderWidth: 5,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DetailPage()));
            },
          ),
          Text(
            "Fulme",
            style: TextStyle(
              color: AppColors.styleColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              height: 2,
            ),
          ),
          Text(
            "Fulme - KUCCA",
            style: TextStyle(
              color: AppColors.styleColor.withAlpha(90),
              fontSize: 16,
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProgressWidget(
              value: .7,
              labelStart: "1:21",
              labelEnd: "3.46",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButtonWidget(
                  size: 80,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.fast_rewind,
                    color: AppColors.styleColor,
                  ),
                  borderWidth: 5,
                ),
                CustomButtonWidget(
                  size: 80,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  borderWidth: 5,
                  isActive: true,
                ),
                CustomButtonWidget(
                  size: 80,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.fast_forward,
                    color: AppColors.styleColor,
                  ),
                  borderWidth: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
