#include <stdio.h>

extern int sum_of_numbers(int* arr, int arr_length);

int main()
{
	int arr[5] = {-2, -1, 3, 4, 5};
	const int sum = sum_of_numbers(arr, 5);
	printf("Sum of numbers = %d", sum);

	return 0;
}