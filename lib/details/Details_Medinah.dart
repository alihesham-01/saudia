import 'package:flutter/material.dart';

import '../widgets/details_widget.dart';

class DetailsMedinah extends StatelessWidget {
  const DetailsMedinah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Content(
        data: Data(
          title: "المدينة المنورة",
          image: ['assets/yanbu.jpg', 'assets/img.png'],
          description: [
            'المدينة المنورة، الواقعة في غرب المملكة العربية السعودية، هي واحدة من أقدس المدن في الإسلام. تُلقب بـ"طيبة الطيبة"، وهي المدينة التي احتضنت النبي محمد ﷺ بعد هجرته من مكة المكرمة، مما جعلها مركزًا دينيًا وثقافيًا هامًا.',
            'من القصص القديمة المشهورة في المدينة المنورة هي قصة "غزوة أحد"، التي تعد واحدة من أشهر وأهم الغزوات في تاريخ الإسلام.\n\n**قصة غزوة أحد:**\n\nغزوة أحد حدثت في السنة 3 هـ (624م) بعد غزوة بدر، وكان الهدف منها رد هجوم قريش على المدينة المنورة. تجمع جيش قريش بقيادة أبي سفيان بن حرب في مكة، ثم تحركوا نحو المدينة المنورة للانتقام من المسلمين الذين هزموا قريش في غزوة بدر. كان جيش قريش يتكون من حوالي 3,000 مقاتل، في حين كان جيش المسلمين يقوده النبي محمد ﷺ ويضم حوالي 700 مقاتل فقط.\n\nعندما اقترب جيش قريش من المدينة المنورة، خرج المسلمون للتصدي لهم في جبل أحد بالقرب من المدينة. وضع النبي ﷺ الرماة على الجبل لحماية الجناح الأيمن للجيش المسلم، ووصاهم بعدم التحرك مهما كانت الظروف.\n\nبدأت المعركة بين المسلمين وقريش، وكانت في البداية لصالح المسلمين حيث بدأوا في تحقيق انتصارات كبيرة، لكن عندما رأى الرماة على الجبل أن المسلمين بدأوا في تحقيق النصر، تركوا مواقعهم في الجبل للانقضاض على الغنائم. هذا الخطأ التكتيكي أدى إلى إتاحة الفرصة لجيش قريش بقيادة خالد بن الوليد، الذي كان يقود الفرسان في ذلك الوقت، للهجوم على الجناح المكشوف للمسلمين.\n\nأدى الهجوم المضاد من قبل قريش إلى انكسار الجيش المسلم، ووقعت خسائر كبيرة في صفوف المسلمين، ومن أبرزها استشهاد حمزة بن عبدالمطلب، عم النبي محمد ﷺ، الذي استشهد في المعركة. كما أصيب النبي ﷺ نفسه بجروح، حيث تم ضربه في وجهه وكسر رباعيته.\n\n**الدرس المستفاد:**\n\nغزوة أحد علمت المسلمين العديد من الدروس، أبرزها أهمية الالتزام بالأوامر العسكرية وعدم التسرع في اتخاذ قرارات تؤثر على مجريات المعركة. كما كان لها دور كبير في تعزيز إيمان المسلمين وصبرهم على الشدائد.\n\nغزوة أحد تُعتبر من أبرز الأحداث التي شهدتها المدينة المنورة، وقد خلدها التاريخ كدرس في القيادة والصبر والثبات.',
            '',
            'في المدينة المنورة، كما في العديد من مناطق المملكة العربية السعودية، توجد بعض الرقصات الشعبية التي تعكس التراث الثقافي والبدوي للمنطقة. من أبرز الرقصات المشهورة في المدينة المنورة:\n\n**رقصة العرضة النجدية**\n\nالوصف: العرضة هي رقصة جماعية تقليدية تعكس الفخر والشجاعة، ويُؤدى فيها المشاركون في صفوف متقابلة، يحملون السيوف أو الجنابي، ويتمايلون بإيقاع موحد مع الطبول والمزامير.\n\nالأدوات: السيوف، الطبول، الدفوف، والمزامير.\n\nالمناسبة: تُؤدى في العديد من المناسبات مثل الأعراس، الاحتفالات الوطنية، وأوقات النصر أو الفرح.\n\n**رقصة الدحة**\n\nالوصف: وهي من الرقصات الشعبية المنتشرة في المنطقة الغربية من المملكة، بما في ذلك المدينة المنورة. تشتهر هذه الرقصة بالحركات الجماعية المتناغمة مع الأهازيج الجماعية.\n\nالأدوات: الطبول، والدُفوف، وأحيانًا البنادق أو الجنابي.\n\nالمناسبة: تُؤدى في الأفراح والمناسبات الاجتماعية وتُعتبر رمزًا للتراث والفرح.\n\n**رقصة السامري**\n\nالوصف: السامري هو نوع من الرقص الشعبي يتضمن حركات متناغمة وسريعة مع دقات الطبول. يتميز بالتنقل بين المشاركين في دائرة ويؤدى أثناء المناسبات الاجتماعية.\n\nالأدوات: الطبول، الدفوف، والمزامير.\n\nالمناسبة: تُؤدى في الأعراس والمهرجانات.\n\nالرقصات في المدينة المنورة تعتبر جزءًا من التراث الثقافي الذي يعكس الأصالة والتقاليد الشعبية للأجيال القديمة.',
            'المدينة المنورة، باعتبارها مركزًا دينيًا وثقافيًا في المملكة العربية السعودية، تحتفظ بعدد من الحرف اليدوية التي تعكس التراث الغني للمنطقة. من أبرز الحرف اليدوية المشهورة في المدينة المنورة:\n\n1. **صناعة السبح**\n\nالوصف: صناعة السبح اليدوية من الحرف التقليدية في المدينة المنورة، حيث يتم صنعها من الأحجار الكريمة مثل العقيق، والمرجان، والأخشاب المحلية. تعتبر السبح هدية مميزة وتستخدم في الذكر والتسبيح.\n\nالمواد: العقيق، الخشب، الكهرمان.\n\nالمناسبة: تُستخدم في العبادة أو تُقدم كهدايا.\n\n2. **صناعة العطور والبخور**\n\nالوصف: المدينة المنورة تشتهر بصناعة العطور والبخور الفاخرة، بما في ذلك العود والمسك والمبخرات. يُستخرج العطر بشكل يدوي من مكونات طبيعية.\n\nالمواد: العود، المسك، الزهور.\n\nالمناسبة: تُستخدم في المناسبات الدينية والاجتماعية.\n\n3. **الخوصيات (صناعة السلال والمفارش)**\n\nالوصف: صناعة السلال والمفارش باستخدام سعف النخيل تعد من الحرف اليدوية المشهورة في المدينة. يتم تصنيع سلال للاستخدام اليومي ومفارش مزخرفة تعكس التراث المحلي.\n\nالمواد: سعف النخيل.\n\nالمناسبة: تُستخدم في الزينة المنزلية والتخزين.\n\n4. **صناعة الفخار**\n\nالوصف: يشتهر الحرفيون في المدينة المنورة بصناعة الفخار اليدوي، مثل الأواني الفخارية كالجرار والمزهريات.\n\nالمواد: الطين المحلي.\n\nالمناسبة: تُستخدم في الحياة اليومية للزينة أو لتخزين الطعام والماء.\n\n5. **صناعة الجلود**\n\nالوصف: تصنيع الحقائب، الأحذية، والمنتجات الجلدية الأخرى يدويًا من الجلود الطبيعية. يُستخدم في هذه الحرف الجلد المستخلص من الحيوانات المحلية.\n\nالمواد: جلود الأغنام والإبل.\n\nالمناسبة: تُستخدم كمنتجات عملية أو تُهدى كعطور وحرف يدوية.\n\n6. **الخرز والزخارف اليدوية**\n\nالوصف: صناعة الخرز والزخارف اليدوية، والتي تشمل تطريز الملابس وخلق إكسسوارات مزخرفة مثل الخواتم والأساور.\n\nالمواد: الخرز، الخيوط، المعادن.\n\nالمناسبة: تُستخدم في الزينة الشخصية والهدايا.\n\nهذه الحرف تمثل جزءًا من التراث الثقافي للمدينة المنورة، حيث يجسد الحرفيون المحليون المهارة والإبداع في خلق قطع فنية يدوية تحمل تاريخ وثقافة المنطقة.',
            'الأهمية الدينية:\n\n**المسجد النبوي**: ثاني أقدس مسجد في الإسلام، ويضم الروضة الشريفة وقبر النبي محمد ﷺ.\n\n**مسجد قباء**: أول مسجد بُني في الإسلام.\n\n**مسجد القبلتين**: شهد تغيير القبلة من بيت المقدس إلى الكعبة.\n\n**البقيع**: مقبرة تاريخية تضم رفات عدد من الصحابة وآل بيت النبي ﷺ.\n\n**معالم أخرى بارزة:**\n\n**جبل أُحد**: موقع غزوة أُحد التاريخية.\n\n**الخندق (غزوة الأحزاب)**: مواقع تاريخية تعكس الأحداث العسكرية في عهد النبي ﷺ.\n\n**مجمع الملك فهد لطباعة المصحف الشريف**: أضخم مركز لطباعة المصحف في العالم.'
          ],
        ),
        maxLines: 3,
      ),
    );
  }
}