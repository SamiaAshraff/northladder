import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:northladder/constants/widgets.dart';
import 'package:northladder/views/common_widgets/button.dart';
import 'package:northladder/views/interest_buying.dart';

class LocationSelect extends HookWidget {
  const LocationSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final val = useState(-1);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Lorem ipsum",
                  style: f18bold,
                ),
                height20,
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  textAlign: TextAlign.center,
                ),
                height10,
                Text("Lorem Ipsum is simply dummy"),
                height20,
                height10,
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          img,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Let's get started"),
                            Text("Let's get started"),
                          ],
                        ),
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: val.value,
                      onChanged: (int? value) {
                        // setState(() {
                        val.value = value!;
                        // });
                      },
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
                height20,
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          img,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Let's get started"),
                            Text("Let's get started"),
                          ],
                        ),
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: val.value,
                      onChanged: (int? value) {
                        // setState(() {
                        val.value = value!;
                        // });
                      },
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
                height20,
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          img,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Let's get started"),
                            Text("Let's get started"),
                          ],
                        ),
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: val.value,
                      onChanged: (int? value) {
                        // setState(() {
                        val.value = value!;
                        // });
                      },
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
                Spacer(),
                CommonButton(
                  text: "Next",
                  onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InterestBuying()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
