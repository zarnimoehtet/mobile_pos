import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/expense.dart';

abstract class LocalExpenseService {
  LocalExpenseService._();

  Stream<List<Expense>> subscribeExpense();
  Future saveExpense(List<Expense> list);
  Future clearExpense();
  Future<List<Expense>> getAllExpense(String invoiceId);
  Future addExpense(Expense expense);
  Future deleteExpense(String id);
}

class LocalExpenseServiceImpl implements LocalExpenseService {
  static final LocalExpenseServiceImpl _singleton =
      LocalExpenseServiceImpl._internal();
  LocalExpenseServiceImpl._internal();
  factory LocalExpenseServiceImpl() => _singleton;

  Future<Box<Expense>> box = Hive.openBox<Expense>("expense");

  @override
  Stream<List<Expense>> subscribeExpense() async* {
    var expenseBox = await box;
    yield _filterAndSort();
    yield* expenseBox.watch().map<List<Expense>>((event) => _filterAndSort());
  }

  List<Expense> _filterAndSort() {
    var b = Hive.box<Expense>("expense");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveExpense(List<Expense> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addExpense(Expense expense) async {
    await (await box).put(expense.id, expense);
  }

  @override
  Future clearExpense() async {
    await (await box).clear();
  }

  @override
  Future<List<Expense>> getAllExpense(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future deleteExpense(String id) async {
    await (await box).delete(id);
  }
}
