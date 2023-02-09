import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_blog/features/mobile_app_project/models/slider_item.dart';

class PhoneSliderMobile extends StatefulWidget {
  final List<SliderItem> sliderItems;
  const PhoneSliderMobile({
    Key? key,
    required this.sliderItems,
  }) : super(key: key);

  @override
  State<PhoneSliderMobile> createState() => _PhoneSliderMobileState();
}

class _PhoneSliderMobileState extends State<PhoneSliderMobile> {
  late CarouselController _carouselController;
  int _curentPageIndex = 0;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // color: Colors.red,
      width: screenWidth,
      height: 450,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: constraints.maxWidth * 0.7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.2),
              ),
            ),
            Positioned(
              left: 0,
              child: IconButton(
                onPressed: () {
                  _carouselController.previousPage();
                },
                icon: const Icon(
                  Icons.arrow_circle_left,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {
                  _carouselController.nextPage();
                },
                icon: const Icon(
                  Icons.arrow_circle_right,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              right: constraints.maxWidth * 0.8,
              child: Column(
                  children: List.generate(
                widget.sliderItems.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 2.5),
                  width: constraints.maxWidth * 0.012,
                  height: ((widget.sliderItems.length - 1 - index) !=
                          _curentPageIndex)
                      ? constraints.maxHeight * 0.015
                      : constraints.maxHeight * 0.0225,
                  decoration: BoxDecoration(
                    shape: ((widget.sliderItems.length - 1 - index) !=
                            _curentPageIndex)
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                    borderRadius: ((widget.sliderItems.length - 1 - index) !=
                            _curentPageIndex)
                        ? null
                        : const BorderRadius.all(Radius.circular(8.0)),
                    color: ((widget.sliderItems.length - 1 - index) ==
                            _curentPageIndex)
                        ? Colors.pink.shade700
                        : Colors.pink.withOpacity(0.2),
                  ),
                ),
              )),
            ),
            SizedBox(
              // color: Colors.black,
              height: constraints.maxHeight,
              width: constraints.maxWidth * 0.85,
              child: CarouselSlider(
                carouselController: _carouselController,
                items: widget.sliderItems
                    .map(
                      (item) => SizedBox(
                        // color: Colors.green,
                        width: constraints.maxWidth * 0.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Image.asset(
                                item.imagePath,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                item.featureName,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 0.5,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _curentPageIndex = index;
                    });
                  },
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
