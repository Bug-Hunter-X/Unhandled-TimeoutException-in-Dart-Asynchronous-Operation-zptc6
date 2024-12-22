# Unhandled TimeoutException in Dart Asynchronous Operation

This repository demonstrates a common error in Dart asynchronous programming:  not properly handling `TimeoutException` within a `try-catch` block.

The `bug.dart` file contains code that simulates an asynchronous operation.  This operation can either succeed, throw a generic `Exception`, or throw a `TimeoutException`.  However, the exception handling is flawed; the specific `TimeoutException` catch block is missing, causing it to fall into the generic catch block. 

The `bugSolution.dart` file provides a corrected version, showing how to properly handle both `Exception` and `TimeoutException` separately to provide more robust error handling.  This ensures that the program gracefully handles both types of failures.
