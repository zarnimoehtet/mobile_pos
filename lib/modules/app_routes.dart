import 'package:get/get.dart';
import 'package:mobile_pos/modules/dashboard/binding/dashboard_binding.dart';
import 'package:mobile_pos/modules/dashboard/ui/views/dashboard_page.dart';
import 'package:mobile_pos/modules/employees/binding/employees_binding.dart';
import 'package:mobile_pos/modules/employees/ui/views/employees_page.dart';
import 'package:mobile_pos/modules/home/binding/home_binding.dart';
import 'package:mobile_pos/modules/home/ui/views/home_page.dart';
import 'package:mobile_pos/modules/items/binding/items_binding.dart';
import 'package:mobile_pos/modules/items/ui/views/items_page.dart';
import 'package:mobile_pos/modules/notification/binding/notification_binding.dart';
import 'package:mobile_pos/modules/notification/ui/views/notification_page.dart';
import 'package:mobile_pos/modules/receipts/binding/receipts_binding.dart';
import 'package:mobile_pos/modules/receipts/ui/views/receipts_page.dart';
import 'package:mobile_pos/modules/sales/binding/sales_binding.dart';
import 'package:mobile_pos/modules/sales/ui/views/sales_page.dart';
import 'package:mobile_pos/modules/stock/binding/stock_binding.dart';
import 'package:mobile_pos/modules/stock/ui/views/stock_page.dart';

import 'splash/binding/splash_binding.dart';
import 'splash/ui/views/splash_page.dart';

class AppRoutes {
  static String get initialRoute => SplashPage.route;
  static List<GetPage> get pages => [
        GetPage(
          name: SplashPage.route,
          binding: SplashBinding(),
          page: () => const SplashPage(),
        ),
        GetPage(
            name: HomePage.route,
            binding: HomeBinding(),
            page: () => const HomePage(),
            children: [
              GetPage(
                name: DashboardPage.route,
                binding: DashboardBinding(),
                page: () => const DashboardPage(),
              ),
              GetPage(
                name: SalesPage.route,
                binding: SalesBinding(),
                page: () => const SalesPage(),
              ),
              GetPage(
                name: StockPage.route,
                binding: StockBinding(),
                page: () => const StockPage(),
              ),
              GetPage(
                name: ItemsPage.route,
                binding: ItemsBinding(),
                page: () => const ItemsPage(),
              ),
              GetPage(
                name: ReceiptsPage.route,
                binding: ReceiptsBinding(),
                page: () => const ReceiptsPage(),
              ),
              GetPage(
                name: EmployeesPage.route,
                binding: EmployeesBinding(),
                page: () => const EmployeesPage(),
              ),
              GetPage(
                name: NotificationPage.route,
                binding: NotificationBinding(),
                page: () => const NotificationPage(),
              ),
            ]),
      ];
}
