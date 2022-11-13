import 'package:get/get.dart';
import 'package:mobile_pos/modules/ads/binding/ads_binding.dart';
import 'package:mobile_pos/modules/ads/ui/views/ads_page.dart';
import 'package:mobile_pos/modules/auth/binding/login_binding.dart';
import 'package:mobile_pos/modules/dashboard/binding/dashboard_binding.dart';
import 'package:mobile_pos/modules/dashboard/ui/views/dashboard_page.dart';
import 'package:mobile_pos/modules/employees/binding/employees_binding.dart';
import 'package:mobile_pos/modules/employees/views/employee_add_page.dart';
import 'package:mobile_pos/modules/employees/views/employee_edit_page.dart';
import 'package:mobile_pos/modules/employees/views/employees_page.dart';
import 'package:mobile_pos/modules/expense/binding/expense_binding.dart';
import 'package:mobile_pos/modules/expense/ui/view/expense_page.dart';
import 'package:mobile_pos/modules/home/binding/home_binding.dart';
import 'package:mobile_pos/modules/items/binding/items_binding.dart';
import 'package:mobile_pos/modules/items/views/category_edit_page.dart';
import 'package:mobile_pos/modules/notification/binding/notification_binding.dart';
import 'package:mobile_pos/modules/notification/ui/views/notification_page.dart';
import 'package:mobile_pos/modules/receipts/binding/receipts_binding.dart';
import 'package:mobile_pos/modules/receipts/ui/views/receipts_page.dart';
import 'package:mobile_pos/modules/sales/binding/sales_binding.dart';
import 'package:mobile_pos/modules/sales/ui/views/sales_page.dart';
import 'package:mobile_pos/modules/sales/ui/views/vouncher_page.dart';
import 'package:mobile_pos/modules/shop/views/shop_login_page.dart';
import 'package:mobile_pos/modules/splash/views/splash_page.dart';
import 'package:mobile_pos/modules/stock/binding/stock_binding.dart';
import 'package:mobile_pos/modules/stock/ui/views/stock_page.dart';

import 'auth/views/login_page.dart';
import 'home/views/home_page.dart';
import 'items/views/category_add_page.dart';
import 'items/views/category_list_page.dart';
import 'items/views/unit_list_page.dart';
import 'items/views/item_add_page.dart';
import 'items/views/items_list_page.dart';
import 'items/views/items_page.dart';
import 'shop/binding/shop_login_binding.dart';
import 'splash/binding/splash_binding.dart';

class AppRoutes {
  static String get initialRoute => SplashPage.route;
  static List<GetPage> get pages => [
        GetPage(
          name: SplashPage.route,
          binding: SplashBinding(),
          page: () => const SplashPage(),
        ),
        GetPage(
          name: AdsPage.route,
          binding: AdsBinding(),
          page: () => const AdsPage(),
        ),
        GetPage(
          name: LoginPage.route,
          binding: LoginBinding(),
          page: () => const LoginPage(),
        ),
        GetPage(
          name: ShopLoginPage.route,
          binding: ShopLoginBinding(),
          page: () => const ShopLoginPage(),
        ),
        GetPage(
            name: HomePage.route,
            bindings: [
              HomeBinding(),
              DashboardBinding(),
              SalesBinding(),
              StockBinding(),
              ItemsBinding(),
              ReceiptsBinding(),
              EmployeesBinding(),
              NotificationBinding(),
              ExpenseBinding()
            ],
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
                  children: [
                    GetPage(
                      name: VouncherPage.route,
                      binding: SalesBinding(),
                      page: () => const VouncherPage(),
                    ),
                  ]),
              GetPage(
                name: StockPage.route,
                binding: StockBinding(),
                page: () => const StockPage(),
              ),
              GetPage(
                  name: ItemsPage.route,
                  binding: ItemsBinding(),
                  page: () => const ItemsPage(),
                  children: [
                    GetPage(
                      name: ItemsListPage.route,
                      binding: ItemsBinding(),
                      page: () => const ItemsListPage(),
                    ),
                    GetPage(
                      name: CategoryListPage.route,
                      binding: ItemsBinding(),
                      page: () => const CategoryListPage(),
                    ),
                    GetPage(
                      name: UnitListPage.route,
                      binding: ItemsBinding(),
                      page: () => const UnitListPage(),
                    ),
                    GetPage(
                      name: CategoryAddPage.route,
                      binding: ItemsBinding(),
                      page: () => const CategoryAddPage(),
                    ),
                    GetPage(
                      name: ItemAddPage.route,
                      binding: ItemsBinding(),
                      page: () => const ItemAddPage(),
                    ),
                    GetPage(
                      name: CategoryEditPage.route,
                      binding: ItemsBinding(),
                      page: () => const CategoryEditPage(),
                    ),
                  ]),
              GetPage(
                name: ReceiptsPage.route,
                binding: ReceiptsBinding(),
                page: () => const ReceiptsPage(),
              ),
              GetPage(
                  name: EmployeesPage.route,
                  binding: EmployeesBinding(),
                  page: () => const EmployeesPage(),
                  children: [
                    GetPage(
                      name: EmployeeAddPage.route,
                      binding: EmployeesBinding(),
                      page: () => const EmployeeAddPage(),
                    ),
                    GetPage(
                      name: EmployeeEditPage.route,
                      binding: EmployeesBinding(),
                      page: () => const EmployeeEditPage(),
                    ),
                  ]),
              GetPage(
                name: NotificationPage.route,
                binding: NotificationBinding(),
                page: () => const NotificationPage(),
              ),
              GetPage(
                name: ExpensePage.route,
                binding: ExpenseBinding(),
                page: () => const ExpensePage(),
              ),
            ]),
      ];
}
