import 'package:get/get.dart';
import '../model/customer.dart';
import '../request/customer_add_request.dart';
import '../response/customer_response.dart';
import '../services/local/loacl_customer_service.dart';
import '../services/remote/api_service.dart';

abstract class CustomerRepository {
  Stream<CustomerItem> addCustomer(CustomerRequest request);

  Stream<List<Customer>> subscribeCustomer();
  Future<List<Customer>> fetchCustomerList(int page, String ownerId);
  Stream<CustomerItem> updateCustomer(
      String customerId, CustomerRequest request);
  Future deleteCustomer(String id);
}

class CustomerRepositoryImpl implements CustomerRepository {
  static final CustomerRepositoryImpl _singleton =
      CustomerRepositoryImpl._internal();
  CustomerRepositoryImpl._internal();
  factory CustomerRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalCustomerService local = Get.find();
  @override
  Stream<CustomerItem> addCustomer(CustomerRequest request) async* {
    var response = await remote.addCustomer(request);
    if (response is CustomerAddResponseSuccess) {
      yield response.customer;
    }
    if (response is CustomerAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is CustomerAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Customer>> fetchCustomerList(int page, String ownerId) async {
    var response = await remote.loadCustomerList(ownerid: ownerId);
    if (response is CustomerListResponseSuccess) {
      if (page == 0) {
        await local.clearCustomer();
      }
      await local.saveCustomer(response.customerList);
      return local.getAllCustomer(ownerId);
    } else if (response is CustomerListResponseFail) {
      if (response.customerList.isEmpty) {
        await local.clearCustomer();
      }
      await local.saveCustomer(response.customerList);
      return local.getAllCustomer(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Customer>> subscribeCustomer() {
    return local.subscribeCustomer();
  }

  @override
  Stream<CustomerItem> updateCustomer(
      String customerId, CustomerRequest request) async* {
    var response = await remote.updateCustomer(customerId, request);
    if (response is CustomerAddResponseSuccess) {
      yield response.customer;
    }
    if (response is CustomerAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is CustomerAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteCustomer(String id) async {
    var response = await remote.deleteCustomer(id);
    if (response is CustomerDeleteResponseSuccess) {
      await local.deleteCustomer(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }
}
