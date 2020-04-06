import 'package:flutter_template/domain/use_cases/user_requests_example/user_requests_example_result.dart';

class UserRequestsExample {
  Future<UserRequestsExampleResult> call() async {
    await Future.delayed(const Duration(seconds: 1));
    return UserRequestsExampleResult("foo");
  }
}
