package com.example.demo;

import java.util.Arrays;
/**   取任意数量数字  不能选取连续下标 加起来最大。首尾不相联
*
* */
public class Rob {
    public static void main(String[] args) {
        int arr[] = {9,1,2,9,2,4,8,9};
        System.out.println(maxM1(arr));
//        System.out.println(maxM(arr,arr.length-1));

    }
    //递归
    public static int maxM(int arr[],int index) {
        if(arr == null || index <0){
            return 0;
        }
        if(index==0){
            return  arr[0];
        }
        return Math.max(maxM(arr,index-1),maxM(arr,index-2)+arr[index]);
    }

//    动态规划
//    1.最优子结构   包含最优子结构 n =>n-1
//    2.递推公式 关系转移
//    3.重叠子问题  存在递归存在重叠
    public static int maxM1(int arr[]){
        if(arr == null || arr.length ==0){
            return 0;
        }
        if(arr.length==1){
            return  arr[0];
        }

//使用数组暂存
//        int[] dp=new int[arr.length];
//        dp[0]=arr[0];
//        dp[1]=Math.max(arr[1],arr[0]);
//        for(int i=2;i<arr.length;i++){
//            dp[i]=Math.max(dp[i-1],dp[i-2]+arr[i]);//递推公式
//            System.out.println(Arrays.toString(dp));
//        }
//        return dp[dp.length-1];


// 使用 两个变量暂存
        int first=arr[0];
        int second=Math.max(arr[1],arr[0]);
        for(int i=2;i<arr.length;i++){
            int flag=second;
            second=Math.max(second,first+arr[i]);//递推公式
            first=flag;
            System.out.println(second);
        }
        return second;
    }
}