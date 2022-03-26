import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:northladder/constants/widgets.dart';
import 'package:northladder/views/common_widgets/button.dart';

class InterestBuying extends StatefulWidget {
  const InterestBuying({Key? key}) : super(key: key);

  @override
  State<InterestBuying> createState() => _InterestBuyingState();
}

class _InterestBuyingState extends State<InterestBuying> {
  int checkedIndex = 0;
  List imgs = [img, img, img, img];
  List selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // final select = useState(false);
    // final checkedIndex=useState(0);
    // bool select = false;
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
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  style: f18bold,
                  textAlign: TextAlign.center,
                ),
                height20,
                Text("Lorem Ipsum is simply dummy"),
                Spacer(),
                Text(
                  "Choose one or more device categories",
                  style: f15bold,
                ),
                height20,
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 25.0,
                  mainAxisSpacing: 25.0,
                  children: List.generate(imgs.length, (index) {
                    return buildDeviceCard(
                      index,
                    );
                  }),
                ),
                height20,
                height20,
                Spacer(),
                CommonButton(text: "Explore", onPress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

// }
  @override
  Widget buildDeviceCard(int index) {
    bool select = index == checkedIndex;
    // String name = imgs[index];
    bool showColor = selectedIndex.contains(index);
    return InkWell(
      onTap: () {
        setState(() {
          checkedIndex = index;
          selectedIndex.contains(index)
              ? selectedIndex.remove(index)
              : selectedIndex.add(index);
        });
        // select ? selectedIndex.add(index) : selectedIndex.remove(index);
        setState(() {});
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: showColor ? Colors.purple[100] : Colors.white,
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Text("Lorem"),
        ],
      ),
    );
  }
}
