```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might fail
  try {
    await Future.delayed(Duration(seconds: 2));
    // Simulate a random failure
    if (DateTime.now().millisecond % 2 == 0) {
      throw Exception('Simulated network error');
    }
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on Exception catch (e) {
    //This catch block will not catch TimeoutException
    print('Error: $e');
  } catch (e) {
    print('Unexpected error: $e');
  }
}

void main() async {
  await fetchData();
}
```