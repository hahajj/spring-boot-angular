package com.example.demo;

import java.util.Arrays;

/** 输入一个整型数组，数组中的一个或连续多个整数组成一个子数组。求所有子数组的和的最大值。

 要求时间复杂度为O(n)。

 *
 * */
public class maxSubArray {
    public static void main(String[] args) {
        int[]  prices = {-2,1,-3,4,-1,2,1,-5,4};
        System.out.println( maxSubArray(prices));

    }
    public static int maxSubArray(int[] nums) {
        int n= nums.length;
        int []max=new int[n];
        max[0]=nums[0];
        int m=nums[0];
        for(int i=1;i<n;i++){
            max[i]=Math.max(nums[i],max[i-1]+ nums[i]);
            m=Math.max(max[i],m);
        }
        return m;
    }
}