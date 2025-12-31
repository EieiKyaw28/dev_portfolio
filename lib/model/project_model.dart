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
  final bool? isPersonal;

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
    this.isPersonal = false,
  });

  static List<ProjectModel> projects = [
    /// my project
    ProjectModel(
      title: "Watchbay",
      description:
          "E-commerce mobile application developed using GetX, featuring product listings, cart management, and secure API integration for orders and payments.",

      appPhotos: "assets/proj_images/cherry_oo.png",
      techUsed: ["dio", "getx"],

      androidLink:
          'https://play.google.com/store/apps/details?id=com.seventhcomputing.cherryOoWatchBay&hl=en',
      iosLink: 'https://apps.apple.com/us/app/watchbay/id6462392858',
      windowsLink: null,
      macosLink: null,
      gitLink: null,
    ),
    ProjectModel(
      title: "Wabi-Sabi HR",
      description:
          "HR management mobile app developed using GetX and integrated with a Python-based REST API for backend services.",
      appPhotos: "assets/proj_images/wabiisabii.png",
      techUsed: ["dio", "getx"],

      androidLink:
          "https://play.google.com/store/apps/details?id=com.seventhcomputing.wabisabi_hr_app&hl=en",
      iosLink: 'https://apps.apple.com/us/app/wabi-sabi-hr/id6739242082',
      windowsLink: null,
      macosLink: null,
      gitLink: null,
    ),
    ProjectModel(
      title: "GHT HR",
      description:
          "HR management mobile app developed using GetX and integrated with a Python-based REST API for backend services.",
      appPhotos: "assets/proj_images/ght.png",
      techUsed: ["dio", "getx"],

      androidLink:
          'https://play.google.com/store/apps/details?id=com.seventhcomputing.ght_hr_app&hl=en',
      iosLink: 'https://apps.apple.com/us/app/ght-hr/id6742475405',
      windowsLink: null,
      macosLink: null,
      gitLink: null,
    ),
    ProjectModel(
      title: "RBD Myanmar",
      description:
          "E-commerce mobile application developed using GetX, featuring product listings, cart management, and secure API integration for orders and payments.",
      appPhotos: "assets/proj_images/rbd.png",
      techUsed: ["dio", "getx"],

      androidLink:
          'https://play.google.com/store/apps/details?id=com.seventhcomputing.rainbow&hl=en',
      iosLink: 'https://apps.apple.com/us/app/rbd-myanmar/id1582969540',
      windowsLink: null,
      macosLink: null,
      gitLink: null,
    ),

    ProjectModel(
      title: "DMS System",
      description:
          "Dealer Management System (DMS) mobile application developed in Java, integrated with an Odoo backend via REST APIs and offline-capable local data storage using MongoDB.",
      appPhotos: "assets/proj_images/dms.png",
      techUsed: ["java", "mongodb", "realm"],

      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: null,
    ),

    ProjectModel(
      title: "Rental Management",
      description:
          "A Flutter-based rental management system featuring a clean, custom UI design. Built with Riverpod for scalable state management and Dio for robust API communication.",
      appPhotos: "assets/proj_images/rental.png",
      techUsed: ["dio", "riverpod", "figma"],
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: "https://github.com/EieiKyaw28/sky_cast",
      isPersonal: true,
    ),
    ProjectModel(
      title: "Sky Cast",
      description:
          "Weather forecast application with real-time data fetching, built using Riverpod for state management and Dio for API integration.",
      appPhotos: "assets/proj_images/weather.png",
      techUsed: ["dio", "riverpod", "figma"],
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: "https://github.com/EieiKyaw28/sky_cast",
      isPersonal: true,
    ),

    ProjectModel(
      title: "Expense Tracker",
      description:
          "Personal finance tracking application with offline-first local persistence using Isar Database and reactive state management powered by GetX.",
      appPhotos: "assets/proj_images/exp.png",
      techUsed: ["isar", "getx"],
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: "https://github.com/EieiKyaw28/expense_tracker",
      isPersonal: true,
    ),

    ProjectModel(
      title: "Shop Now",
      description:
          "E-commerce application leveraging Supabase and PostgreSQL for backend services, integrated with Isar for local storage and Riverpod for scalable state management.",
      appPhotos: "assets/proj_images/flutter.png",
      techUsed: ["supabase", "postgresql", "isar", "firebase", "riverpod"],
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
      gitLink: "https://github.com/EieiKyaw28/shop_now_backend",
      isPersonal: true,
    ),

    ProjectModel(
      title: "POS (Lite)",
      description:
          "Cross-platform POS application supporting real-time transactions via WebSockets, Supabase backend services, and offline-capable local data handling with Isar.",
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
          "Sales management platform with real-time data synchronization using WebSockets, Supabase backend integration, and Riverpod-based architecture.",
      appPhotos: "assets/images/salesplus.png",
      techUsed: ["supabase", "postgresql", "isar", "riverpod", "mockito"],
      usersCount: null,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.marketplace.salesplus",
      iosLink: "https://apps.apple.com/us/app/sales-plus-bot/id6739029671",
      windowsLink:
          "https://apps.microsoft.com/detail/9pf7cml4z1jp?hl=en-US&gl=MM",
      macosLink: "https://apps.apple.com/us/app/sales-plus-bot/id6739029671",
    ),

    ProjectModel(
      title: "Zawgyi Mart",
      description:
          "Large-scale e-commerce platform featuring RESTful APIs, real-time updates via WebSockets, and efficient local caching with Isar Database.",
      appPhotos: "assets/images/zawgyimart.png",
      techUsed: ["isar", "riverpod", "mockito"],
      usersCount: 10000,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.zawgyimart.zacompany",
      iosLink: "https://apps.apple.com/mm/app/zawgyi-mart/id1580381266",
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Hoco Online Shopping",
      description:
          "Online shopping application integrating RESTful APIs with real-time updates and optimized state management using Riverpod.",
      appPhotos: "assets/proj_images/hoco.jpg",
      techUsed: ["isar", "riverpod"],
      usersCount: 10000,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.phonecenter.onlineshopping",
      iosLink:
          "https://apps.apple.com/bg/app/hoco-online-shopping/id1614456892",
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Sweety Home B2B",
      description:
          "B2B commerce application enabling real-time order processing through WebSockets, API-driven data flow, and offline support using Isar.",
      appPhotos: "assets/proj_images/sweety_home_b2b.png",
      techUsed: ["isar", "riverpod"],
      usersCount: 3000,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.marketplace.sweetyhomeb2b",
      iosLink: "https://apps.apple.com/us/app/sweety-home-b2b/id1664695779",
      windowsLink:
          "https://apps.microsoft.com/detail/9pgq0bn6j084?hl=en-US&gl=US",
      macosLink: "https://apps.apple.com/us/app/sweety-home-b2b/id1664695779",
    ),

    ProjectModel(
      title: "Sweety Home Member",
      description:
          "Customer-focused mobile application integrating RESTful APIs with a lightweight and scalable Riverpod-based state management approach.",
      appPhotos: "assets/proj_images/sh_member.png",
      techUsed: ["riverpod"],
      usersCount: null,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.sweetyhome.member",
      iosLink: "https://apps.apple.com/us/app/sweety-home-member/id6443511939",
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Home Mall",
      description:
          "Retail shopping platform with real-time inventory updates, RESTful APIs, and local data persistence using Isar Database.",
      appPhotos: "assets/proj_images/home_mall.png",
      techUsed: ["isar", "riverpod"],
      usersCount: 3000,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.sweetyhome.homemall",
      iosLink: "https://apps.apple.com/us/app/homemall-app/id6445836654",
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Proven Backend",
      description:
          "Merchant and logistics management application powered by RESTful APIs with a clean and maintainable Riverpod-based architecture.",
      appPhotos: "assets/proj_images/proven.png",
      techUsed: ["riverpod"],
      usersCount: null,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.deliverysoftware.epost",
      iosLink: "https://apps.apple.com/us/app/epost-merchant/id1597559513",
      windowsLink:
          "https://apps.microsoft.com/detail/9n7nntpth9xc?hl=en-US&gl=MM",
      macosLink:
          "https://apps.microsoft.com/detail/9n7nntpth9xc?hl=en-US&gl=MM",
    ),

    ProjectModel(
      title: "Toyo Battery",
      description:
          "Product and service management application integrating RESTful APIs with a scalable and modular Riverpod state management approach.",
      appPhotos: "assets/proj_images/flutter.png",
      techUsed: ["riverpod"],
      usersCount: null,
      androidLink: null,
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "MP Officer",
      description:
          "Enterprise-grade Android application built with Jetpack Compose, integrating RESTful APIs and modern state management patterns.",
      appPhotos: "assets/proj_images/mp_officer.png",
      techUsed: ["jetpack"],
      usersCount: null,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.za.epost.manager",
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "MP Agent",
      description:
          "Agent-facing Android application developed with Jetpack Compose and RESTful API integration for operational workflows.",
      appPhotos: "assets/proj_images/mp_agent.png",
      techUsed: ["jetpack"],
      usersCount: null,
      androidLink:
          "https://play.google.com/store/apps/details?id=com.myanmarpostagent.zacompany.mpagent",
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Love Car",
      description:
          "Automotive service application utilizing RESTful APIs and Bloc architecture for predictable and maintainable state management.",
      appPhotos: "assets/images/lovecar_logo.png",
      techUsed: ["bloc"],
      usersCount: null,
      androidLink: "https://play.google.com/store/apps/details?id=love.car.mm",
      iosLink: null,
      windowsLink: null,
      macosLink: null,
    ),

    ProjectModel(
      title: "Foodburma",
      description:
          "Food delivery application integrating RESTful APIs with GetX for efficient navigation and state management.",
      appPhotos: "assets/images/foodburma.jpg",
      techUsed: ["getx"],
      usersCount: null,
      androidLink: "https://apkpure.com/foodburma/com.devseasons.sarmal",
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

// Don't use

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
