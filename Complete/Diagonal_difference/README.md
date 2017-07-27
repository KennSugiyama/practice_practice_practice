Given a square matrix of size N, calculate the absolute difference between the sums of its diagonals.

## Input Format
n = a single integer.
matrix = matrix with size n x n

## Output Format

Print the absolute difference between the two sums of the matrix's diagonals as a single integer.

## Example
### Sample Input
n = 3
matrtix = [[11, 2, 4],[4, 5, 6],[10, 8, -12]]

##Sample Output
15

## Explanation

The primary diagonal is:

11
   5
     -12
Sum across the primary diagonal: 11 + 5 - 12 = 4

The secondary diagonal is:

     4
   5
10
Sum across the secondary diagonal: 4 + 5 + 10 = 19
Difference: |4 - 19| = 15