#include <stdio.h>
#include <functional>

// Simple function for pointer testing
int add(int a, int b) {
    return a + b;
}

int multiply(int a, int b) {
    return a * b;
}

// Function that takes a function pointer
int apply_operation(int x, int y, int (*op)(int, int)) {
    return op(x, y);
}

// Function that takes a std::function
int call_function(int x, int y, std::function<int(int, int)> func) {
    return func(x, y);
}

int main() {
    int x = 5, y = 3;
    
    // Test 1: Function pointer
    int (*fn_ptr)(int, int) = add;
    int result1 = apply_operation(x, y, fn_ptr);
    printf("Result 1 (Function pointer - add): %d\n", result1);
    
    // Test 2: Function pointer with different function
    int result2 = apply_operation(x, y, multiply);
    printf("Result 2 (Function pointer - multiply): %d\n", result2);
    
    // Test 3: Lambda expression
    auto lambda_op = [](int a, int b) { return a - b; };
    int result3 = call_function(x, y, lambda_op);
    printf("Result 3 (lambda - sub): %d\n", result3);
    
    // Test 4: Lambda with capture
    int factor = 2;
    auto lambda_with_capture = [factor](int a, int b) { return (a + b) * factor; };
    int result4 = call_function(x, y, lambda_with_capture);
    printf("Result 3 (lambda capture - factor): %d\n", result4);
    
    return 0;
}
