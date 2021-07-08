package com.example.demo;

import java.util.Arrays;

/**  给定一个数组 prices ，其中 prices[i] 是一支给定股票第 i 天的价格。

 设计一个算法来计算你所能获取的最大利润。你可以尽可能地完成更多的交易（多次买卖一支股票）。

 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 *
 * */
public class maxProfit2 {
    public static void main(String[] args) {
        int[]  prices = {1,4,2,7,2,9};
        maxProfit(prices);

    }
    public static int maxProfit(int[] prices) {
        if (prices.length <= 1)
            return 0;

        int len = prices.length;
        int sum=0;
        for (int i = 1; i < len; i++) {
            // 这两行调换顺序也是可以的
            if(prices[i]>prices[i-1]){
                sum+=prices[i]-prices[i-1];
            }
        }
        return sum;
    }
}