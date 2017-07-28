# Challenge
Colleen is turning _n_ years old! Therefore, she has _n_ candles of various heights on her cake, and candle _i_ has height _height(i)_. Because the taller candles tower over the shorter ones, Colleen can only blow out the tallest candles.

Given the _height(i)_ for each individual candle, find and print the number of candles she can successfully blow out.

## Input Format
* The first line contains a single integer,_n_, denoting the number of candles on the cake.
* The second line contains _n_ space-separated integers, where each integer _i_ describes the height of candle _i_ .

## Output Format
Print the number of candles Colleen blows out on a new line.

## Example
# Sample Input
4
3 2 1 3

# Sample Output
2

# Explanation
We have one candle of height , one candle of height , and two candles of height . Colleen only blows out the tallest candles, meaning the candles where . Because there are  such candles, we print  on a new line.