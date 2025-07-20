import 'package:portfolio/res/constants.dart';

class LinkModel {
  final String title;
  final String url;

  LinkModel(this.title, this.url);
}

class ProjectModel {
  final String title;
  final String description;
  final String? appPhotos;
  final bool internalLink;
  List<LinkModel>? links = [];
  final List<String> techUsed;
  final int? usersCount;
  final String? androidLink;
  final String? iosLink;
  final String? macosLink;
  final String? windowsLink;
  final String? gitLink;

  ProjectModel({
    required this.title,
    required this.description,
    this.appPhotos,
    this.internalLink = false,
    this.usersCount,
    required this.techUsed,
    this.links,
    required this.androidLink,
    required this.iosLink,
    required this.macosLink,
    required this.windowsLink,
    this.gitLink,
  });

  static List<ProjectModel> projects = [
    /// my project
    ProjectModel(
      title: "Expense Tracker",
      description: "Developed with Isar Database and GetX",
      appPhotos: "assets/proj_images/expense.png",
      techUsed: ["isar", "getx"],

      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: 'https://github.com/EieiKyaw28/expense_tracker',
    ),
    ProjectModel(
      title: "Shop Now",
      description: "Developed with Supabase, PostgreSQL, Isar and Riverpod",
      appPhotos: "assets/proj_images/flutter.png",
      techUsed: ["supabase", "isar", "riverpod"],

      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: 'https://github.com/EieiKyaw28/shop_now_backend',
    ),

    ProjectModel(
      title: "POS(Lite)",
      description:
          "Developed with Supabase, PostgreSQL, WebSockets, Isar and Riverpod",
      appPhotos: "assets/images/poslite.png",
      techUsed: ["supabase", "postgresql", "isar", "riverpod", "mockito"],
      usersCount: 10000,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.marketplace.poslite",
      iosLink: "https://apps.apple.com/us/app/pos-lite/id1624703290",
      windowsLink:
          "https://apps.microsoft.com/detail/9n9b4768l0j2?hl=en-US&gl=MM",
      macosLink: "https://apps.apple.com/us/app/pos-lite/id1624703290",
    ),
    ProjectModel(
      title: "Sales Plus",
      description:
          "Developed with Supabase, PostgreSQL, WebSockets, Isar and Riverpod",
      appPhotos: "assets/images/salesplus.png",
      usersCount: null,
      techUsed: ["supabase", "postgresql", "isar", "riverpod", "mockito"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.marketplace.salesplus",
      iosLink: "https://apps.apple.com/us/app/sales-plus-bot/id6739029671",
      windowsLink:
          "https://apps.microsoft.com/detail/9pf7cml4z1jp?hl=en-US&gl=MM",
      macosLink: "https://apps.apple.com/us/app/sales-plus-bot/id6739029671",
    ),
    ProjectModel(
      title: "Zawgyi Mart",
      description: "Developed with RESTful APIs, Websockets, Isar and Riverpod",
      appPhotos: "assets/images/zawgyimart.png",
      usersCount: 10000,
      techUsed: ["isar", "riverpod", "mockito"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.zawgyimart.zacompany",
      iosLink: "https://apps.apple.com/mm/app/zawgyi-mart/id1580381266",
      windowsLink: null,
      macosLink: null,
    ),
    ProjectModel(
      title: "Hoco Online Shopping",
      description: "Developed with RESTful APIs, WebSockets, Isar and Riverpod",
      appPhotos: 'asstes/proj_images/hoco.png',
      usersCount: 10000,
      techUsed: ["isar", "riverpod"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.phonecenter.onlineshopping",
      iosLink:
          "https://apps.apple.com/bg/app/hoco-online-shopping/id1614456892",
      windowsLink: null,
      macosLink: null,
    ),
    ProjectModel(
      title: "Sweety Home B2B",
      description: "Developed with RESTful APIs, Websockets, Isar and Riverpod",
      appPhotos: "assets/proj_images/sweety_home_b2b.png",
      usersCount: 3000,
      techUsed: ["isar", "riverpod"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.marketplace.sweetyhomeb2b",
      iosLink: "https://apps.apple.com/us/app/sweety-home-b2b/id1664695779",
      windowsLink: null,
      macosLink: "https://apps.apple.com/us/app/sweety-home-b2b/id1664695779",
    ),

    ProjectModel(
      title: "Sweety Home Member",
      description: "Developed with RESTful APIs and Riverpod",
      appPhotos: 'asstes/proj_images/sh_member.png',
      usersCount: null,
      techUsed: ["riverpod"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.sweetyhome.member",
      iosLink: 'https://apps.apple.com/us/app/sweety-home-member/id6443511939',
      windowsLink: null,
      macosLink: null,
    ),
    ProjectModel(
      title: "Home Mall",
      description: "Developed with RESTful APIs, Websockets, Isar and Riverpod",
      appPhotos: "assets/proj_images/home_mall.png",
      usersCount: 3000,
      techUsed: ["isar", "riverpod"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.sweetyhome.homemall",
      iosLink: "https://apps.apple.com/us/app/homemall-app/id6445836654",
      windowsLink: null,
      macosLink: null,
    ),
    ProjectModel(
      title: "Proven Backend",
      description: "Developed with RESTful APIs and Riverpod",
      appPhotos: "assets/proj_images/proven.png",
      usersCount: null,
      techUsed: ["riverpod"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.deliverysoftware.epost",
      iosLink: "https://apps.apple.com/us/app/epost-merchant/id1597559513",
      windowsLink:
          "https://apps.microsoft.com/detail/9n7nntpth9xc?hl=en-US&gl=MM",
      macosLink:
          'https://apps.microsoft.com/detail/9n7nntpth9xc?hl=en-US&gl=MM',
    ),
    ProjectModel(
      title: "Toyo Battery",
      description: "Developed with RESTful APIs and Riverpod",
      appPhotos: "assets/proj_images/flutter.png",
      usersCount: null,
      techUsed: ["riverpod"],
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Love Car",
      description: "Developed with RESTful APIs and Bloc",
      appPhotos: "assets/images/lovecar_logo.png",
      usersCount: null,
      techUsed: ["bloc"],
      androidLink: "https://play.google.com/store/apps/details?id=love.car.mm",
      iosLink: "https://apps.apple.com/us/app/love-car/id6739915707",
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "MP Officer",
      description:
          "Developed with Jetpack Compose with RESTful API and state management",
      appPhotos: "assets/proj_images/mp_officer.png",
      usersCount: null,
      techUsed: ["jetpack"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.za.epost.manager",
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),
    ProjectModel(
      title: "MP Agent",
      description:
          "Developed with Jetpack Compose with RESTful API and state management",
      appPhotos: "assets/proj_images/mp_agent.png",
      usersCount: null,
      techUsed: ["jetpack"],
      androidLink:
          "https://play.google.com/store/apps/details?id=com.myanmarpostagent.zacompany.mpagent",
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),
  ];
}

class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final List<ProjectPlatformModel> prjPlatformList;
  Project(
    this.name,
    this.description,
    this.image,
    this.link,
    this.prjPlatformList,
  );
}

class ProjectPlatformModel {
  final String link;
  final String icon;
  ProjectPlatformModel(this.icon, this.link);
}

List<Project> projectList = [
  Project(
    'Sweety Home B2B',
    'The Sweety Home App is a cross-platform solution for managing furniture and home goods operations. It handles orders, stock across warehouses and showrooms, delivery logistics, promotions, warranties, payments, and customer service — all fully integrated with SAP for real-time syncing and seamless business flow.',
    ProjectImageString.shB2b,
    'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
  Project(
    'Home Mall',
    'Home Mall is Sweety Home’s official e-commerce app for Android and web, offering real-time stock, promotions, warranty registration, and live chat. Fully integrated with the SAP system, it ensures secure, seamless online shopping connected to backend operations.',
    ProjectImageString.homeMall,
    'https://github.com/Hamad-Anwar/',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
  Project(
    'Sweety Home Member',
    'The Sweety Home Member App is a Flutter-based mobile app for loyal showroom customers. It offers exclusive promotions, membership benefits, and discounts. Integrated with a backend system (Firebase/APIs), it manages user data, purchase history, and push notifications, and includes NFC card reading for fast, contactless member identification.',
    ProjectImageString.shMember,
    'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),

  Project(
    'Hoco Online  Shopping',
    'Hoco Online Shopping is an e-commerce platform specializing in mobile phones and electronic devices. The app provides a seamless shopping experience for customers to browse, order, and track their purchases. Built using RESTful APIs, it ensures fast and reliable integration with the backend, allowing real-time updates on product availability, orders, and payments.',
    ProjectImageString.hoco,
    'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),

  Project(
    'Proven International',
    'The Proven International App is a comprehensive enterprise tool built with Flutter and Laravel. It manages inventory, warehouse logistics, order and payment processing, delivery tracking, and employee KPIs. The app ensures secure, real-time operations and complies with internal ISO standards for quality and information security.',
    ProjectImageString.proven,
    'https://github.com/Hamad-Anwar/Coffe-Shop-Beautifull-UI',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
  Project(
    'Proven Distribution',
    'The Proven Distribution App is a cross-platform Flutter app (Android, iOS, Windows, macOS) that unifies order management, stock control, warehouse operations, delivery tracking, and finance. It syncs real-time data with the central ERP, enabling smooth workflows for sales reps, warehouse staff, and delivery drivers, with live dashboards for management visibility.',
    ProjectImageString.shB2b,
    'https://github.com/Hamad-Anwar/Car-Controller-Getx-Flutter',
    [],
  ),
  Project(
    'POS Lite',
    'POS Lite is a cross-platform point-of-sale (POS) system developed using the Flutter codebase. It supports both real-time and offline-first operations, enabling seamless business functionality regardless of internet connectivity. The system uses Supabase and PostgreSQL for backend services and Isar for efficient local storage and synchronization. Designed for SMEs, wholesalers, and online retailers, POS Lite provides robust features such as sales processing, order management, inventory tracking, and warehouse control.',
    ProjectImageString.pos,
    'https://github.com/Hamad-Anwar/Messenger-App-Backend-Firebase',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
  Project(
    'Sale Plus',
    'Sales Plus is a Flutter-based mobile app tailored for F&B businesses, offering a unified system for managing orders, stock, warehouse, deliveries, table bookings, finances, and reports. It uses Isar for fast local storage, Supabase for backend services and authentication, and PostgreSQL for cloud data and analytics, enabling real-time updates and efficient business operations.',
    ProjectImageString.salesPlus,
    'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
  Project(
    'Sale Plus',
    'Sales Plus is a Flutter-based mobile app tailored for F&B businesses, offering a unified system for managing orders, stock, warehouse, deliveries, table bookings, finances, and reports. It uses Isar for fast local storage, Supabase for backend services and authentication, and PostgreSQL for cloud data and analytics, enabling real-time updates and efficient business operations.',
    ProjectImageString.salesPlus,
    'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI',
    [
      ProjectPlatformModel(ImageString.androidIcon, ''),
      ProjectPlatformModel(ImageString.iosIcon, ''),

      ProjectPlatformModel(ImageString.macIcon, ''),

      ProjectPlatformModel(ImageString.windowIcon, ''),
    ],
  ),
];
