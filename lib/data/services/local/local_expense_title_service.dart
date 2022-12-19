import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/expense.dart';

abstract class LocalExpenseTitleService {
  LocalExpenseTitleService._();

  Stream<List<ExpenseTitle>> subscribeExpenseTitle();
  Future saveExpenseTitle(List<ExpenseTitle> list);
  Future clearExpenseTitle();
  Future<List<ExpenseTitle>> getAllExpenseTitle(String invoiceId);
  Future addExpenseTitle(ExpenseTitle expenseTitle);
  Future deleteExpenseTitle(String id);
}

class LocalExpenseTitleServiceImpl implements LocalExpenseTitleService {
  static final LocalExpenseTitleServiceImpl _singleton =
      LocalExpenseTitleServiceImpl._internal();
  LocalExpenseTitleServiceImpl._internal();
  factory LocalExpenseTitleServiceImpl() => _singleton;

  Future<Box<ExpenseTitle>> box = Hive.openBox<ExpenseTitle>("expenseTitle");

  @override
  Stream<List<ExpenseTitle>> subscribeExpenseTitle() async* {
    var expenseTitleBox = await box;
    yield _filterAndSort();
    yield* expenseTitleBox
        .watch()
        .map<List<ExpenseTitle>>((event) => _filterAndSort());
  }

  List<ExpenseTitle> _filterAndSort() {
    var b = Hive.box<ExpenseTitle>("expenseTitle");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveExpenseTitle(List<ExpenseTitle> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addExpenseTitle(ExpenseTitle expenseTitle) async {
    await (await box).put(expenseTitle.id, expenseTitle);
  }

  @override
  Future clearExpenseTitle() async {
    await (await box).clear();
  }

  @override
  Future<List<ExpenseTitle>> getAllExpenseTitle(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.ownerId?.id == ownerId)
        .toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future deleteExpenseTitle(String id) async {
    await (await box).delete(id);
  }
}
