import 'package:flutter/material.dart';

class OnBoardingInstructions {
  final String image, title, subtitle;

  OnBoardingInstructions(this.image, this.title, this.subtitle);
}

class MyColors {
  static const grey = Color(0xfff3f3f3),
      orange = Color(0xffffb755),
      red = Color(0xffed5568),
      lightGreen = Color(0xffdbf3e8),
      darkGreen = Color(0xff4ac18e),
      blue = Color(0xff40beee);
}

class DoctorInfo {
  final String name,
      image,
      type,
      reviewCount,
      about,
      workingHours,
      customersCount,
      experience,
      certifications;
  final double reviews;

  DoctorInfo({
    this.name,
    this.image,
    this.type,
    this.reviews,
    this.reviewCount,
    this.about,
    this.workingHours,
    this.customersCount,
    this.experience,
    this.certifications,
  });
}

List<DoctorInfo> doctorInfo = [
  DoctorInfo(
    image:
        "https://www.egonzehnder.com/cache/public/xconsultant-images-1524828623-7b10737a79ba6a2b3dd2fd089b87c20b-CROP-950x570.jpg.pagespeed.ic.f5zzGyHtdV.webp",
    about: "The purpose of business is to create and keep the customer",
    certifications: "10",
    experience: "13",
    name: "Mr Sam Tech",
    customersCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "IT Consultant",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  DoctorInfo(
    image:
        "https://dmi-uploads.imgix.net/general/What-Skills-Do-I-Need-to-Be-a-Marketing-Consultant_Final.jpg?fm=jpg&ixlib=php-1.1.0&q=3&w=2060&s=a214a3f5676669c2aa2c09779065fb43",
    about: "The purpose of business is to create and keep the customer",
    certifications: "10",
    experience: "10",
    name: "Ms Priti HR",
    customersCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "Human Resource Consultant",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
  DoctorInfo(
    image:
        "https://www.egonzehnder.com/cache/public/xconsultant-images-1514993116-85dc3801db5c8b2ac925e34d32d46048-CROP-950x570.jpg.pagespeed.ic.dKs5z6gsVQ.webp",
    about: "The purpose of business is to create and keep the customer",
    certifications: "10",
    experience: "15",
    name: "Mr Deepak Tech",
    customersCount: "385",
    reviewCount: "1320",
    reviews: 4.3,
    type: "IT Consultant",
    workingHours: "Mon - Fri 09:00 - 17:00",
  ),
];

List<OnBoardingInstructions> onBoardingInstructions = [
  OnBoardingInstructions(
    "assets/images/onboarding2.jpg",
    "Call a consultant for Help",
    "The purpose of business is to create and keep the customer",
  ),
  OnBoardingInstructions(
    "assets/images/onboarding3.jpg",
    "Call a consultant for Help",
    "The purpose of business is to create and keep the customer",
  ),
];

List<Map<String, dynamic>> categories = [
  {
    'icon': 'assets/icons/hr.png',
    'title': 'Human Resource Consultant',
    'color': MyColors.red,
  },
  {
    'icon': 'assets/icons/it.png',
    'title': 'IT Consultant',
    'color': MyColors.orange,
  },
];

String avatar =
    "https://pbs.twimg.com/profile_images/1233356631188082689/qcmTohZh_400x400.jpg";
