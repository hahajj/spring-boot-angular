package com.example.demo;

import javax.validation.constraints.Min;
import java.util.Arrays;

/**  . 72. 编辑距离
 给你两个单词 word1 和 word2，请你计算出将 word1 转换成 word2 所使用的最少操作数 。

 你可以对一个单词进行如下三种操作：

 插入一个字符
 删除一个字符
 替换一个字符


 示例 1：

 输入：word1 = "horse", word2 = "ros"
 输出：3
 解释：
 horse -> rorse (将 'h' 替换为 'r')
 rorse -> rose (删除 'r')
 rose -> ros (删除 'e')
 示例 2：

 输入：word1 = "intention", word2 = "execution"
 输出：5
 解释：
 intention -> inention (删除 't')
 inention -> enention (将 'i' 替换为 'e')
 enention -> exention (将 'n' 替换为 'x')
 exention -> exection (将 'n' 替换为 'c')
 exection -> execution (插入 'u')


 提示：

 0 <= word1.length, word2.length <= 500
 word1 和 word2 由小写英文字母组成

 *
 * */
public class minDistance {
    public static void main(String[] args) {
        String word1="zoologicoarchaeologist";
        String word2="zoogeologist";
        System.out.println( minDistance(word1,word2));

    }
    public static int  minDistance(String word1, String word2) {
        if(word1.length()==0||word2.length()==0){
            return  Math.abs(word2.length()-word1.length());
        }
        int n= word1.length();
        int m=word2.length();
        int [][] arr =new int[n+1][m+1];
        for (int i = 0; i < n + 1; i++) {
            arr[i][0] = i;
        }
        for (int j = 0; j < m + 1; j++) {
            arr[0][j] = j;
        }
        for(int i=1;i<n+1;i++){
            for(int j=1;j<m+1;j++){
                if(word1.charAt(i-1)==word2.charAt(j-1)){
                    arr[i][j]=Math.min(Math.min(arr[i-1][j]+1,arr[i][j-1]+1),arr[i-1][j-1]) ;
                }else{
                    arr[i][j]=Math.min( arr[i-1][j-1]+1,Math.min(arr[i-1][j]+1,arr[i][j-1]+1));
                }
            }
        }

        return  arr[n][m];

    }

//    public static int  df(String l, String s,int i,int j, int [][] arr) {
//        if(l.charAt(i-1)==s.charAt(j-1)){
//            System.out.println("--------L--------"+l.charAt(i-1)+"--------J--------"+s.charAt(j-1));
//            arr[i][j]=Math.min(Math.min(arr[i-1][j],arr[i][j-1]),arr[i-1][j-1]) ;
//        }else{
//            System.out.println("--------L--------"+l.charAt(i-1)+"--------J--------"+s.charAt(j-1));
//            arr[i][j]=Math.min( arr[i-1][j-1],Math.min(arr[i-1][j],arr[i][j-1]))+1;
//        }
//
//        return 1
//    }

}