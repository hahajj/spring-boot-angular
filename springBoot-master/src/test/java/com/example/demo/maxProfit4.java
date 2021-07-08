package com.example.demo;

import java.util.Arrays;

/** 给定一个整数数组 prices ，它的第 i 个元素 prices[i] 是一支给定的股票在第 i 天的价格。

 设计一个算法来计算你所能获取的最大利润。你最多可以完成 k 笔交易。

 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。

 *
 * */
public class maxProfit4 {
    public static void main(String[] args) {
        int[]  prices = {2,4,7,1};
        int k=2;
        System.out.println( maxProfit(k,prices));

    }
    public static int maxProfit(int k,int[] prices) {
        if (prices.length == 0) {
            return 0;
        }
        int n = prices.length;
        k = Math.min(k, n / 2);//当天买卖为0收益 所以 交易次数最小值为K或者是N/2
        int buyList[] =new int[k+1];
        int sellList[] =new int[k+1];
        buyList[0]= -prices[0];sellList[0]=0;
        for (int i = 1; i <= k; ++i) {
            buyList[i] = sellList[i] = -111;
        }
        for (int i = 1; i < n; ++i) {
            buyList[0] = Math.max(buyList[0], sellList[0] - prices[i]);
            for (int j = 1; j<= k; ++j) {
                buyList[j] = Math.max(buyList[j],sellList[j] -prices[i]);//哪个花的钱最少（值最小）
                sellList[j] = Math.max(sellList[j], buyList[j-1] + prices[i]);//卖的最贵（值最大）
            }
        }
        System.out.println(Arrays.toString(sellList));
        Arrays.sort(sellList);
        return sellList[sellList.length-1];
    }
}