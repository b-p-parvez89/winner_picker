import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_title': 'Winner Picker',
          'language_selection': 'Select Your language',
          'dark_theme': 'Dark Theme',
          'continue': 'Continue',
          
          'enter_your_details_below': ' Enter your Details Below',
          'enter_name': "Enter your Neme",
          'enter_email': "Enter your Email",
          'password': "Password",
          'confirm_password': "Confrim Password",
          'sing_Up': "SignUp",
          'or_continue': "Or continue with",
          'login_with_gmail': "Login with google",
          'already_have_an_account': "Already have an account ?  ",
          'login': 'Log In',

          'entries': 'Entries',
          'result': 'Result',
          'customize': 'Customize',
          'more': 'More',
          'shuffle': "Shuffle",
          'sort': 'Sort',
          'add_image': 'Add Image',
          'add_background_image': 'Add Background Image',
          'add_center_image': 'Add Center Image',
          'add_image_entry': "Add Image Entry",

          //comments pickers
          'youtube_random_comment_picker': "Youtube Random Comment Picker",
          'pick_random_comments_from_youtube':
              'Pick random comments form Youtube videos with this Youtube Giveway picker',
          'enter_a_youtube_video_url': 'Enter a youtube video URL',
          'get_start': 'Get Start',
          'number_of_winner': "Number Of Winners",
          'minimum_tags': 'Minimum Tags',
          'no_of_substitutes': 'No. of Substitutes',
          'allow_duplicate_comments': 'Allow Duplicate Comments',
          'include_comments_replies': "Include Comments Replies",
          'filter_comments_by_words_or_hashtags':
              "Filter comments by words or hashtage",
          'add_word_or_#hashtag': 'Add words or #hashtag',
          'optional': 'Optional',
          'before_date': 'Before Date',
          'after_date': 'After date',
          'pick_a_winner': 'Pick a Winners',
          'back': 'Back',

          //
          'yes_or_no': 'Yes or No (Spin wheel)',
          'used_date': "Used Date",
          'travels_destination_picker': 'Travels Destination Picker',
          'now_what_to_eat': "Now What To Eat (example)",
          'workout_selector': 'Workout Selector (example)',
          'savings_challenges': "Savings Challenges",
          'Study_topic_selector': 'Study Topic Selector (example)'
        },
        'bn_BD': {
          'app_title': 'বিজয়ী নির্বাচন',
          'language_selection': 'ভাষা নির্বাচন করুণ',
          'dark_theme': 'অন্ধকার থিম',
          'continue': 'এগিয়ে যান',
          'enter_your_details_below': 'নিচে আপনার তথ্য দিন',
          'enter_name': "আপনার নাম লিখুন",
          'enter_email': "ইমেইল লিখুন",
          'password': "পাসওয়ার্ড দিন",
          'confirm_password': "পাসওয়ার্ড নিশ্চিত করুন ",
          'sing_Up': "সাইন আপ করুণ",
          'or_continue': "অথবা চালিয়ে যান",
          'login_with_gmail': "গুগলে লগইন করুন",
          'already_have_an_account': "ইতিমধ্যে একটি অ্যাকাউন্ট আছে ? ",
          'login': 'লগ ইন করুন',
//spinePage
          'entries': 'নতুন নাম',
          'result': 'ফলাফল',
          'customize': '',
          'more': 'আরও',
          'shuffle': "পরিহার",
          'sort': 'সাজান',
          'add_image': 'ইমেজ যোগ করুণ',
          'add_background_image': 'ব্যাকগ্রাউন্ড ইমেজ যোগ করুণ',
          'add_center_image': 'কেন্দ্র ইমেজ যোগ করুণ',
          'add_image_entry': "ইমেজ এন্ট্রি যোগ করুণ",

          //comments pickers
          'youtube_random_comment_picker': "ইউটিউব র‍্যানডোম কমেন্ট নির্বাচন",
          //'pick_random_comments_from_youtube':'Pick random comments form Youtube videos with this Youtube Giveway picker',
          'pick_random_comments_from_youtube':
              'এই ইউটিউব গিভওয়ে পিকারের সাথে ইউটিউব ভিডিও থেকে এলোমেলো মন্তব্য চয়ন করুন',
          'enter_a_youtube_video_url': 'একটি ইউটিউব ভিডিও URL লিখুন',
          'get_start': 'শুরু করা যাক',
          'number_of_winner': "বিজয়ীদের সংখ্যা",
          'minimum_tags': 'সর্বনিম্ন ট্যাগ',
          'no_of_substitutes': 'বিকল্পের সংখ্যা',
          'allow_duplicate_comments': 'একই মন্তব্যগুলির অনুমতি দিন',
          'include_comments_replies': "মন্তব্যের উত্তর অন্তর্ভুক্ত করুন",
          'filter_comments_by_words_or_hashtags':
              "শব্দ বা হ্যাশটেজ দ্বারা মন্তব্যগুলি ফিল্টার করুন",
          'add_word_or_#hashtag': 'শব্দ বা #hashtag যোগ করুন',
          'optional': 'ঐচ্ছিক',
          'before_date': 'আগের তারিখ',
          'after_date': 'পরের তারিখ',
          'pick_a_winner': 'বিজয়ীদের বেছে নিন',
          'back': 'Back',

          //
          'yes_or_no': 'হ্যাঁ অথবা না (স্পিন হুইল)',
          'used_date': "ব্যবহৃত তারিখ",
          'travels_destination_picker': 'ট্রাভেলস ডেস্টিনেশন পিকার',
          'now_what_to_eat': "এখন কী খাবেন (উদাহরণ)",
          'workout_selector': 'অনুশীলন নির্বাচক (উদাহরণ)',
          'savings_challenges': "সঞ্চয়ের চ্যালেঞ্জ",
          'Study_topic_selector': 'অধ্যয়নের বিষয় নির্বাচক (উদাহরণ)'
        },
        'hi_IN': {
          'app_title': 'विजेता पिकर',
          'language_selection': 'अपनी भाषा का चयन करें',
          'dark_theme': 'डार्क थीम',
          'continue': 'जारी रखना',
          'enter_your_details_below':'नीचे अपना विवरण दर्ज करें',
          'enter_name': "अपना Neme दर्ज करें",
          'enter_email': "अपना ईमेल दर्ज करें",
          'password': "पासवर्ड",
          'confirm_password': "Confrim पासवर्ड",
          'sing_Up': "साइनअप करें",
          'or_continue': "या जारी रखें",
          'login_with_gmail': "गूगल के साथ लॉगिन करें",
          'already_have_an_account': "पहले से ही एक खाता है ? ",
          'login': 'लॉग इन करो ',

          'entries': 'प्रविष्टियों',
          'result': 'परिणाम',
          'customize': 'अनुकूलित',
          'more': 'अधिक',
          'shuffle': "फेर बदल",
          'sort': 'जाति',
          'add_image': 'छवि जोड़ें',
          'add_background_image': 'पृष्ठभूमि छवि जोड़ें',
          'add_center_image': 'केंद्र छवि जोड़ें',
          'add_image_entry': "छवि प्रविष्टि जोड़ें",

          //comments pickers
          'youtube_random_comment_picker': "Youtube रैंडम कमेंट पिकर",
          'pick_random_comments_from_youtube':
          'इस Youtube Giveway पिकर के साथ Youtube वीडियो के लिए यादृच्छिक टिप्पणियां चुनें',
          'enter_a_youtube_video_url': 'एक यूट्यूब वीडियो यूआरएल दर्ज करें',
          'get_start': 'शुरू हो जाओ',
          'number_of_winner': "विजेताओं की संख्या",
          'minimum_tags': 'न्यूनतम टैग',
          'no_of_substitutes': 'विकल्प की संख्या',
          'allow_duplicate_comments': 'डुप्लिकेट टिप्पणियों की अनुमति दें',
          'include_comments_replies': "टिप्पणियाँ उत्तर शामिल करें",
          'filter_comments_by_words_or_hashtags':
          "टिप्पणियों को शब्दों या हैशटैग द्वारा फ़िल्टर करें",
          'add_word_or_#hashtag': 'शब्द जोड़ें या #hashtag',
          'optional': 'वैकल्पिक',
          'before_date': 'तारीख से पहले',
          'after_date': 'तारीख के बाद',
          'pick_a_winner': 'एक विजेता चुनें',
          'back': 'शर्त लगाना',

          //
          'yes_or_no': 'हाँ या नहीं (स्पिन व्हील)',
          'used_date': "प्रयुक्त दिनांक",
          'travels_destination_picker': 'यात्रा गंतव्य पिकर',
          'now_what_to_eat': "अब क्या खाएं (उदाहरण)",
          'workout_selector': 'कसरत चयनकर्ता (उदाहरण)',
          'savings_challenges': "बचत की चुनौतियां",
          'Study_topic_selector': 'अध्ययन विषय चयनकर्ता (उदाहरण)'
        },
        'ar_AR': {
          'app_title': 'منتقي الفائز',
          'language_selection': 'اختر لغتك',
          'dark_theme': 'المظهر الداكن',
          'continue': 'استمر',
          'enter_your_details_below': ' أدخل التفاصيل الخاصة بك أدناه',
          'enter_name': "أدخل Neme الخاص بك",
          'enter_email': "أدخل بريدك الإلكتروني",
          'password': "شعار",
          'confirm_password': "كلمة مرور كونفريم",
          'sing_Up': "التسجيل",
          'or_continue': "أو تابع مع",
          'login_with_gmail': "تسجيل الدخول باستخدام جوجل",
          'already_have_an_account': "لديك حساب بالفعل ? ",
          'login': 'Log In',

          'entries': 'ادخالات',
          'result': 'نتيجة',
          'customize': 'تخصيص',
          'more': 'أكثر',
          'shuffle': "المراوغه",
          'sort': 'صنف',
          'add_image': 'اضف صورة',
          'add_background_image': 'إضافة صورة خلفية',
          'add_center_image': 'إضافة صورة المركز',
          'add_image_entry': "إضافة إدخال صورة",

          //comments pickers
          'youtube_random_comment_picker': "يوتيوب منتقي التعليقات العشوائية",
          'pick_random_comments_from_youtube':
              'اختر تعليقات عشوائية من مقاطع فيديو Youtube باستخدام منتقي Youtube Giveway هذا',
          'enter_a_youtube_video_url': 'أدخل عنوان URL لفيديو يوتيوب',
          'get_start': 'ابدأ الآن',
          'number_of_winner': "عدد الفائزين",
          'minimum_tags': 'الحد الأدنى من العلامات',
          'no_of_substitutes': 'رقم. عدد البدائل',
          'allow_duplicate_comments': 'السماح بالتعليقات المكررة',
          'include_comments_replies': "تضمين التعليقات الردود",
          'filter_comments_by_words_or_hashtags':
          "تصفية التعليقات حسب الكلمات أو الهاشتاغ",
          'add_word_or_#hashtag': 'إضافة كلمات أو #hashtag',
          'optional': 'اختياري',
          'before_date': 'قبل التاريخ',
          'after_date': 'بعد التاريخ',
          'pick_a_winner': 'اختر الفائزين',
          'back': 'ظهر',

          //
          'yes_or_no': 'نعم أو لا (عجلة الدوران)',
          'used_date': "تاريخ الاستخدام",
          'travels_destination_picker': 'يسافر منتقي الوجهة',
          'now_what_to_eat': "الآن ماذا نأكل (مثال)",
          'workout_selector': 'محدد التمرين (مثال)',
          'savings_challenges': "تحديات الادخار",
          'Study_topic_selector': 'محدد موضوع الدراسة (مثال)'
        }
      };
}
