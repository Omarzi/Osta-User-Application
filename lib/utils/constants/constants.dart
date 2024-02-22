import 'package:flutter/material.dart';
import 'package:osta_app/utils/constants/image_strings.dart';

class OConstants {
  static const baseUrl = 'https://osta.magdsofteg.xyz/';

  /// Authentication
  static const loginUrl = '';
  static const registerUrl = 'api/user/register';
  static const checkOTPUrl = 'api/user/check-phone';
  static const verifyOTPUrl = 'api/user/login';


  static List<String> restaurantImages = [
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
  ];

  static List<String> categoryIcons = [
    OImages.fruitIcon,
    OImages.breadIcon,
    OImages.catEatIcon,
    OImages.fishIcon,
    OImages.iceCreamIcon,
    OImages.fruitIcon,
    OImages.breadIcon,
    OImages.catEatIcon,
    OImages.fishIcon,
    OImages.iceCreamIcon,
  ];
  static  List<String> typeTextForBottomSheetInDetailsPrice=[
    "The Price",
    "Osta fees",
    "Tax",
    "Additional raw materials",
    "Additional cost %20",
  ];
  static  List<String> priceTextForBottomSheetInDetailsPrice=[
    "100 EGB",
    "20 EGB",
    "5 EGB",
    "100 EGB",
    "50 EGB",
  ];

  static List<String> imgeCategoryMarket = [
    OImages.categoryMarket1,
    OImages.categoryMarket2,
    OImages.categoryMarket3,
    OImages.categoryMarket2,
    OImages.categoryMarket1,
    OImages.categoryMarket3,
  ];

  static  List<String> titleCategoryMarket=[
    "Air conditioner",
    "furniture",
    "laptop",
    "Air conditioner",
    "furniture",
    "laptop",
  ];

  static  List<String> categoryInRequestAContactor=[
    "Finishing",
    "building",
    "interior design",
    "External design",
    "Finishing",
    "building",
    "interior design",
    "External design",
    "Finishing",
    "building",
    "interior design",
    "External design",
  ];

  static  List<String> textOfHelpCenter=[
    "The service provider changes the price",
    "The store is late with delivery",
    "I cannot cancel the order",
    "I'm having a problem while ordering",
    "I need help with a current order",
    "I ordered twice by mistake",
  ];


  static List<String> bannersList = [
    OImages.banner,
    OImages.banner2,
    OImages.banner3,
    OImages.banner4,
  ];

  static List<String> subCategoryMarket = [
    OImages.subCategoryMarket1,
    OImages.subCategoryMarket2,
    OImages.subCategoryMarket3,
    OImages.subCategoryMarket4,
    OImages.subCategoryMarket4,

  ];
  static List<String> typeOfProduct = [
    'Sharp',
    'Osta',

  ];

  static List<String> texts = [
    'Wallet',
    'Addresses',
    'Be a partner',
    'Technical support',
    'Help center',
    'Submit proposals',
    'Terms of Use',
    'Terms and conditions',
    'Share the app',
    'Application language',
    'notification'

  ];
  static List<String> images = [
    'assets/images/wallet.png',
    'assets/images/location.png',
    'assets/images/logoIcon.png',
    'assets/images/chatIcon.png',
    'assets/images/informationIcon.png',
    'assets/images/auditIcon.png',
    'assets/images/fileIcon.png',
    'assets/images/fileIcon.png',
    'assets/images/sharingIcon.png',
    'assets/images/translateIcon.png',
    'assets/images/notification.png',
  ];

  static List<String> category = [
    'Electrics',
    'Carpentry',
    'plumber',
    'building',
    'cleanliness',
    'gardens',
    'Electrics',
    'Carpentry',
    'plumber',
    'building',
    'cleanliness',
    'gardens',
  ];
  static List colors =[
     Color(0xffAAB2E9),
     Color(0xffE9AAC5),
     Color(0xffAAE3E9),
     Color(0xffBFE9AA),
     Color(0xffE9BFAA),
     Color(0xffDDAAE9),
     Color(0xffAAB2E9),
     Color(0xffE9AAC5),
     Color(0xffAAE3E9),
     Color(0xffBFE9AA),
     Color(0xffE9BFAA),
     Color(0xffDDAAE9),
  ];

}