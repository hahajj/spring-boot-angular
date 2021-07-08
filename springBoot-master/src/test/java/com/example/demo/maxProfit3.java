package com.example.demo;

/** 给定一个数组，它的第 i 个元素是一支给定的股票在第 i 天的价格。

 设计一个算法来计算你所能获取的最大利润。你最多可以完成 两笔 交易。

 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。
 *
 * */
public class maxProfit3 {
    public static void main(String[] args) {
        int[]  prices = {1,2,4,0,8,5,3,9,2,1,4,8};
        maxProfit(prices);

    }
    public static int maxProfit(int[] prices) {
        int n = prices.length;
        int buy1 = -prices[0], sell1 = 0;
        int buy2 = -prices[0], sell2 = 0;
        for (int i = 1; i < n; ++i) {
            buy1 = Math.max(buy1, -prices[i]);//哪个花的钱最少（值最小）
            sell1 = Math.max(sell1, buy1 + prices[i]);//卖的最贵（值最大）
            buy2 = Math.max(buy2, sell1 - prices[i]);
            sell2 = Math.max(sell2, buy2 + prices[i]);
//            System.out.println("-----分隔符-------");

            System.out.println("prices[i]"+prices[i]+"    bb:    "+buy1+"     ss:    "+sell1+"     BB:   "+buy2+"     SS:    "+sell2);
//            System.out.println("-----结束-------");

        }
        return sell2;
    }
}