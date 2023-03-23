import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? const Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'ramadhan.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // navItem
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo_aliflam_0.png',
                        width: 144,
                        height: 80,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Pricing',
                            index: 1,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Team',
                            index: 2,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Stories',
                            index: 3,
                          ),
                        ],
                      ),
                      Image.asset(
                        'button_account_1.png',
                        width: 163,
                        height: 53,
                        //color: const Color.fromARGB(255, 226, 118, 145),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Image.asset(
                //   'mudik_1_0.png',
                //   width: 250,
                // ),
                selectImage(selectedIndex),
                const SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Image selectImage(int selected) {
  if (selected == 0) {
    return Image.asset(
      'mudik_1_0.png',
      width: 259,
    );
  } else if (selected == 1) {
    return Image.asset(
      'pricing.png',
      width: 375,
    );
  } else if (selected == 2) {
    return Image.asset(
      'team.png',
      width: 375,
    );
  } else {
    return Image.asset(
      'story.png',
      width: 250,
    );
  }
}
