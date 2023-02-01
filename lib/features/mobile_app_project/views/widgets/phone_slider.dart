import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_blog/features/mobile_app_project/models/slider_item.dart';

class PhoneSlider extends StatefulWidget {
  final List<SliderItem> sliderItems;
  const PhoneSlider({
    required this.sliderItems,
    Key? key,
  }) : super(key: key);

  @override
  State<PhoneSlider> createState() => _PhoneSliderState();
}

class _PhoneSliderState extends State<PhoneSlider> {
  late CarouselController _carouselController;
  int _curentPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: constraints.maxWidth * 0.8,
            height: constraints.maxHeight * 0.8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(0.2),
            ),
          ),
          Positioned(
            right: constraints.maxWidth * 0.89,
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
            left: constraints.maxWidth * 0.89,
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
                height: ((widget.sliderItems.length - 1 - index) != _curentPageIndex)
                    ? constraints.maxHeight * 0.015
                    : constraints.maxHeight * 0.0225,
                decoration: BoxDecoration(
                  shape: ((widget.sliderItems.length - 1 - index) != _curentPageIndex)
                      ? BoxShape.circle
                      : BoxShape.rectangle,
                  borderRadius:
                      ((widget.sliderItems.length - 1 - index) != _curentPageIndex)
                          ? null
                          : const BorderRadius.all(Radius.circular(8.0)),
                  color: ((widget.sliderItems.length - 1 - index) == _curentPageIndex)
                      ? Colors.pink.shade700
                      : Colors.pink.withOpacity(0.2),
                ),
              ),
            )),
          ),
          SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth * 0.7,
            child: CarouselSlider(
              carouselController: _carouselController,
              items: widget.sliderItems
                  .map(
                    (item) => Column(
                      children: [
                        Image.asset(
                          item.imagePath,
                          height: constraints.maxHeight * 0.9,
                          width: constraints.maxWidth * 0.7,
                        ),
                        const SizedBox(
                        height: 15.0,
                        ),
                        Text(item.featureName, style: Theme.of(context).textTheme.headlineMedium,),
                      ],
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _curentPageIndex = index;
                  });
                  // print(_curentPageIndex);
                },
              ),
            ),
          ),
        ],
      );
    });
  }
}
