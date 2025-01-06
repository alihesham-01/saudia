import 'package:flutter/material.dart';

import '../widgets/details_widget.dart';


class DetailsAhsaa extends StatelessWidget {
  const DetailsAhsaa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Content(
        data: Data(
          title: "مدينة الأحساء",
          image: ['assets/yanbu.jpg', 'assets/img.png'],
          description: [
            'الأحساء هي واحدة من أقدم وأشهر المناطق في المملكة العربية السعودية، وتقع في الجزء الشرقي من البلاد. تُعد واحة زراعية غنية بالموارد الطبيعية، ووجهة ثقافية وتاريخية مميزة.',
            '',
            'تُعرف الأحساء بتراثها الثقافي الغني، بما في ذلك الحرف اليدوية التقليدية مثل صناعة الفخار والسجاد والخوص.\n\nتم إدراج واحة الأحساء في قائمة التراث العالمي لليونسكو عام 2018، نظرًا لأهميتها البيئية والثقافية.\n\nتقام فيها العديد من الفعاليات والمهرجانات، مثل مهرجان التمور ومهرجان سوق القيصرية.',
            '',
            '',
            '',
          ],
        ),
        maxLines: 3,
      ),
    );
  }
}