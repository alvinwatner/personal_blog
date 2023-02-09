import 'package:flutter/material.dart';
import 'package:personal_blog/features/mobile_app_project/models/slider_item.dart';
import 'package:personal_blog/features/mobile_app_project/views/widgets/project_application_desktop.dart';

class ListMAProjectDesktopLayout extends StatelessWidget {
  const ListMAProjectDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProjectApplicationDesktop(
          title: "RADATIME",
          subtitle: "watch e-commerce",
          description:
              "RADATIME builds a network of the best original watch services that synergize, offline-online, with user-friendly, current and seamless UI/UX for all people with the best customer experience orientation. Supported by superior product knowledge, up-to-date with developing trends, maximum benefits for customer satisfaction, as well as playing a role in building a modern society / individual who is aware of time, for advanced Indonesia.",
          playstoreUrl:
              "https://play.google.com/store/apps/details?id=com.radatime.radatime_mobile&hl=en",
          companyProfileUrl: "https://www.radatime.co.id/about",
          sliderItems: [
            SliderItem(
              imagePath: 'assets/images/rada_home.png',
              featureName: "Home Page",
            ),
            SliderItem(
              imagePath: 'assets/images/rada_allbrand.png',
              featureName: "All Category Page",
            ),
            SliderItem(
              imagePath: 'assets/images/rada_brand.png',
              featureName: "Category Page",
            ),
            SliderItem(
              imagePath: 'assets/images/rada_filter.png',
              featureName: "Filter Dialog",
            ),
          ],
          featuresRow: [
            const TableRow(
              children: [
                Center(
                    child: Text(
                  "Authentication by Google",
                  textAlign: TextAlign.center,
                )),
                Center(child: Text("Firebase")),
                Center(child: Text("google_sign_in")),
              ],
            ),
            TableRow(
              children: [
                const Center(child: Text("Payment")),
                Center(
                    child: Text(
                  "~20 payment methods",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.black),
                )),
                const Center(child: Text("webview_flutter")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Live Chat")),
                Center(child: Text("Tawkto")),
                Center(child: Text("webview_flutter")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Deep Link")),
                Center(child: Text("-")),
                Center(child: Text("uni_links")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Track Resi")),
                Center(
                    child: Text(
                  "JNE, JNT, etc",
                )),
                Center(child: Text("-")),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Divider(thickness: 2,),
        ProjectApplicationDesktop(
          isRight: true,
          title: "Millenial Property",
          subtitle: "real estate e-commerce",
          description:
              "The Millennial Property application is a mobile-based application platform in the field of rental property, buying and selling, membership, advertising which includes apartments, hotels, villas, exclusive boarding houses, houses, co-working spaces and other entertainment venues. Having a 'user friendly' service system or the best service in leasing, customer care and friendly service to provide comfort and standard equipment such as star hotels in each unit managed by Millennial Property management.",
          companyProfileUrl: "https://www.millennialproperty.co.id/#home",
          sliderItems: [
            SliderItem(
              imagePath: 'assets/images/mp_home.png',
              featureName: "Home Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_detail.png',
              featureName: "Detail Property Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_barcode.png',
              featureName: "Detail Checkin Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_livechat.png',
              featureName: "Live Chat Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_membership.png',
              featureName: "Membership Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_fasilitas.png',
              featureName: "List Facilities Page",
            ),
            SliderItem(
              imagePath: 'assets/images/mp_filter.png',
              featureName: "Filter Page",
            ),
          ],
          featuresRow: [
            const TableRow(
              children: [
                Center(child: Text("Push Notification")),
                Center(child: Text("One signal")),
                Center(child: Text("-")),
              ],
            ),
            TableRow(
              children: [
                const Center(child: Text("Livechat")),
                Center(
                    child: Text(
                  "Firebase",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.black),
                )),
                const Center(child: Text("-")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Launch Map")),
                Center(child: Text("-")),
                Center(child: Text("maps_launcher")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Generate Barcode")),
                Center(child: Text("-")),
                Center(child: Text("barcode_widget")),
              ],
            ),
            const TableRow(
              children: [
                Center(child: Text("Upload Photo")),
                Center(
                    child: Text(
                  "-",
                )),
                Center(
                  child: Text("image_picker"),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
