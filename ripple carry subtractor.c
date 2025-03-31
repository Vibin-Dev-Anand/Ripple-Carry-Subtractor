#include <stdio.h>

// Function to perform binary subtraction using full subtractor logic
void rippleCarrySubtractor(int A[4], int B[4], int bin, int Diff[4], int *Bout) {
    int borrow[5];
    borrow[0] = bin;
    
    for (int i = 0; i < 4; i++) {
        Diff[i] = A[i] ^ B[i] ^ borrow[i];
        borrow[i+1] = (~A[i] & (B[i] ^ borrow[i])) | (B[i] & borrow[i]);
    }
    *Bout = borrow[4];
}

int main() {
    int A[4], B[4], Diff[4], bin, Bout;
    
    printf("Enter first 4-bit binary number (space-separated): ");
    for (int i = 0; i < 4; i++) scanf("%d", &A[i]);
    
    printf("Enter second 4-bit binary number (space-separated): ");
    for (int i = 0; i < 4; i++) scanf("%d", &B[i]);
    
    printf("Enter initial borrow (0 or 1): ");
    scanf("%d", &bin);
    
    rippleCarrySubtractor(A, B, bin, Diff, &Bout);
    
    printf("Result (Difference): ");
    for (int i = 0; i < 4; i++) printf("%d", Diff[i]);
    printf("\nFinal Borrow: %d\n", Bout);
    
    return 0;
}
