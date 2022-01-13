; sum_of_numbers(int* arr, int arr_length)

.686
.model flat
public _sum_of_numbers

.code
_sum_of_numbers PROC
	push ebp
	mov ebp, esp
	push ecx
	push esi

	mov ecx, [ebp + 12]	; ecx = arr_length
	mov esi, [ebp + 8]	; esi = arr

	mov eax, 0

iterate:				; summing loop
	dec ecx
	add eax, [esi + ecx * 4]
	cmp ecx, 0
	jnz iterate

	pop esi
	pop ecx
	pop ebp
	ret
_sum_of_numbers ENDP
END