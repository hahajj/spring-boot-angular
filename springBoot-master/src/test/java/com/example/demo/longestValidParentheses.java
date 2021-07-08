package com.example.demo;

import java.util.Arrays;

/**  . 32. 最长有效括号
 给你一个只包含 '(' 和 ')' 的字符串，找出最长有效（格式正确且连续）括号子串的长度。



 示例 1：

 输入：s = "(()"
 输出：2
 解释：最长有效括号子串是 "()"
 示例 2：

 输入：s = ")()())"
 输出：4
 解释：最长有效括号子串是 "()()"
 示例 3：

 输入：s = ""
 输出：0

 *
 * */
public class longestValidParentheses {
    public static void main(String[] args) {
        String s="((()))())";
        System.out.println( longestValidParentheses(s));

    }
    public static int  longestValidParentheses(String s) {
        if (s == null || s.length() <= 1) {
            return 0;
        }
        int n=s.length();
        int [] arr= new  int[n];

        for(int i=1;i<n;i++){
            if(arr[i]==1){
                continue;
            }
            if(s.charAt(i)==')'){
                dfs(s,i,i,arr);
            }
        }


        int max=0;
        int [] arr1= new  int[n];
        arr1[0]=arr[0];
        for(int i=1;i<n;i++){
            if(arr[i]==1){
                arr1[i]=arr1[i-1]+1;
                max=Math.max(max,arr1[i]);
            }
        }
        return max;
    }
    public static void df(String s, int i, int j,int[] arr) {
        if(arr[i]==0&&arr[j]==0&&s.charAt(i)=='('&&s.charAt(j)==')'){
            arr[i]=1;
            arr[j]=1;
            if(j+1<s.length()&&s.charAt(j)==')'){
             df(s,i,j+1,arr);
            }
        }
    }

    public static void dfs(String s, int i, int j,int[] arr) {
        int start=i;
        Boolean flag=true;
        while(start>0&&flag){
            start--;
            if(arr[start]==0){
                flag=false;
                if(s.charAt(start)=='('&&s.charAt(j)==')'){
                  df(s,start,j,arr);
                }
            }
        }
    }

}