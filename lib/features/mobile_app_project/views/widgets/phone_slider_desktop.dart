import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_blog/features/mobile_app_project/models/slider_item.dart';
import 'package:personal_blog/shared/responsive/utils.dart';

class PhoneSliderDesktop extends StatefulWidget {
  final List<SliderItem> sliderItems;
  const PhoneSliderDesktop({
    Key? key,
    required this.sliderItems,
  }) : super(key: key);

  @override
  State<PhoneSliderDesktop> createState() => _PhoneSliderDesktopState();
}

class _PhoneSliderDesktopState extends State<PhoneSliderDesktop> {
  late CarouselController _carouselController;
  int _curentPageIndex = 0;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveValue(
        context,
        tabletBreakpoint: 960,
        mobileBreakpoint: 700,
        desktop: 550,
        tablet: 300,
        mobile: 250,
      ),

      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: constraints.maxWidth * 0.7,
              // height: constraints.maxHeight * 0.8,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.2),
              ),
            ),
            Positioned(
              right: constraints.maxWidth * 0.85,
              child: IconButton(
                onPressed: () {
                  _carouselController.previousPage();
                },
                icon: const Icon(
                  Icons.arrow_circle_left,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              left: constraints.maxWidth * 0.85,
              child: IconButton(
                onPressed: () {
                  _carouselController.nextPage();
                },
                icon: const Icon(
                  Icons.arrow_circle_right,
                  color: Colors.blue,
                  size: 40,
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
              width: constraints.maxWidth * 0.7,
              height: constraints.maxHeight,
              child: CarouselSlider(
                carouselController: _carouselController,
                items: widget.sliderItems
                    .map(
                      (item) => SizedBox(
                        // color: Colors.green,
                        width: constraints.maxWidth * 0.7,
                        height: constraints.maxHeight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Image.asset(
                                item.imagePath,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                item.featureName,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 1,
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
