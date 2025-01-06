import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatefulWidget {
  final Data data;
  final int maxLines;

  const Content({super.key, required this.data, required this.maxLines});

  @override
  contentstate createState() => contentstate();
}

class contentstate extends State<Content> with TickerProviderStateMixin {
  final List<String> tabs = [
    'نبذة',
    'القصة',
    'التراث',
    'رقصات مشهورة',
    'الحرف اليدوية',
    'أماكن مشهورة'
  ];
  int selectedIndex = 0;
  bool isExpanded = false;
  late PageController _pageController;
  int currentImageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon:  Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: width*0.08,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("التفاصيل",
            style: GoogleFonts.rakkas(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: height * 0.04,
              ),
            ),
          ),
          backgroundColor: Color(0xffB97848),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.015),
              // Image section
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.01),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.3,
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            currentImageIndex = index;
                          });
                        },
                        itemCount: widget.data.image.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              image: DecorationImage(
                                image: AssetImage(widget.data.image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Previous Button
                    Positioned(
                      left: width * 0.01,
                      child: IconButton(
                        onPressed: () {
                          if (currentImageIndex > 0) {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon:
                            Icon(Icons.arrow_back_ios, color: Colors.grey[700]),
                      ),
                    ),
                    // Next Button
                    Positioned(
                      right: width * 0.01,
                      child: IconButton(
                        onPressed: () {
                          if (currentImageIndex <
                              widget.data.image.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon: Icon(Icons.arrow_forward_ios,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.012),
              // TabBar section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(tabs.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(width * 0.02),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.01),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        tabs[index],
                        style: GoogleFonts.cairo(
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                })),
              ),
              SizedBox(height: height * 0.01),
              Divider(
                thickness: 2,
                color: Colors.grey[400],
                endIndent: width * 0.05,
                indent: width * 0.05,
              ),
              // Text and description section
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.all(width * 0.05),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      SizedBox(height: height * 0.001),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: const Color(0xffB97848),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.02),
                          child: Center(
                            child: Text(
                              widget.data.title,
                              style: GoogleFonts.rakkas(
                                color: Colors.black,
                                fontSize: width * 0.08,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),

                      SizedBox(height: height * 0.02),

                      // Description
                      AnimatedCrossFade(
                        firstChild: Text(
                          widget.data.description[selectedIndex],
                          maxLines: widget.maxLines,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.cairo(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        secondChild: Text(
                          widget.data.description[selectedIndex],
                          style: GoogleFonts.cairo(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        crossFadeState: isExpanded
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 300),
                      ),

                      // Toggle button (show more / less)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? "عرض اقل" : "عرض المزيد",
                          style: GoogleFonts.cairo(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Data {
  final List<String> image;
  final String title;
  final List<String> description;

  Data({required this.image, required this.title, required this.description});
}
