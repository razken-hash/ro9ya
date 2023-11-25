import 'package:ro9ya/models/ro9ya_item.dart';

class Ro9yaRepo {
  static List<Ro9yaItem> ro9yaItems = [
    Ro9yaItem(
      label: "موقع الرقية",
      url: "https://ruqya.net/",
    ),
    Ro9yaItem(
      label: "منتدى الرقية",
      url: "https://www.ruqya.net/forum/index.php?",
    ),
    Ro9yaItem(
      label: "موسوعة الرقية",
      url: "https://www.ruqya.net/mauthat.html",
    ),
    Ro9yaItem(
      label: "قبل الذهاب للمعالج",
      url: "https://ruqya.net/moalleg.html",
    ),
    Ro9yaItem(
      label: "كيف تعالج نفسك بالرقية",
      url: "https://ruqya.net/how.html",
    ),
    Ro9yaItem(
      label: "الأمراض الروحية",
      subItems: [
        Ro9yaItem(
          label: "الصرع",
          url: "https://ruqya.net/sara.html",
        ),
        Ro9yaItem(
          label: "السحر",
          url: "https://ruqya.net/sehr.html",
        ),
        Ro9yaItem(
          label: "العين والحسد",
          url: "https://ruqya.net/aen.html",
        ),
      ],
    ),
    Ro9yaItem(
      label: "قصص واقعية من حياتي العملية",
      url: "https://www.ruqya.net/forum/forumdisplay.php?f=139",
    ),
    Ro9yaItem(
      label: "الفرق بين الأمراض الروحية والعضوية",
      url: "https://ruqya.net/amrath1.html",
    ),
    Ro9yaItem(
      label: "الفرق بين الأمراض الروحية والنفسية",
      url: "https://ruqya.net/amrath2.html",
    ),
    Ro9yaItem(
      label: "مطويات الرقية",
      subItems: [
        Ro9yaItem(
          label: "كيف تعالج نفسك بالرقية الشرعية",
          url: "https://youtu.be/alL9x_k_Fb4?feature=shared",
        ),
        Ro9yaItem(
          label: "القول الحر في بيان علاج السحر",
          url: "https://youtu.be/0qVf3KoD9pE?feature=shared",
        ),
        Ro9yaItem(
          label: "القول المبين في علاج الحسد والعين",
          url: "https://youtu.be/X1QF9rSQ2YY?feature=shared",
        ),
      ],
    ),
    Ro9yaItem(
      label: "حصن المسلم",
      url:
          "https://play.google.com/store/apps/details?id=com.hisn.almuslim&hl=ar&gl=US",
    ),
    Ro9yaItem(
      label: "الرقية الشرعية للقراء والمشايخ",
      subItems: [
        Ro9yaItem(
          label: "رقية شرعية للقراء والمشايخ",
          url:
              "https://www.tvquran.com/ar/selections/category/6#google_vignette",
        ),
        Ro9yaItem(
          label: "رقية مطولة للشيخ ماهر المعيقلي",
          url: "https://www.tvquran.com/ar/selection/945",
        ),
      ],
    ),
    Ro9yaItem(
      label: "سؤال وجواب في الرقية",
      url: "https://ruqya.net/forum/showthread.php?p=451797",
    ),
    Ro9yaItem(
      label: "من نحن ( أبو البراء المعاني )",
      url: "https://ruqya.net/forum/showthread.php?t=714",
    ),
    Ro9yaItem(
      label: "صفحة الفيسبوك",
      url: "https://m.facebook.com/alruqya?wtsid=rdr_0pPOnc6qim256fEx8",
    ),
    Ro9yaItem(
      label: "قناة اليوتيوب",
      url: "https://youtube.com/@user-fv3jk6iv7i?feature=shared",
    ),
    Ro9yaItem(
      label: "موقع عيادة ( أبو البراء )",
      url: "https://goo.gl/maps/98BLp3Zkqb6kCVcd8",
    ),
  ];
}
