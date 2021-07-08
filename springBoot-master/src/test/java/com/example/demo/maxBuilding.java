package com.example.demo;

import javafx.scene.transform.AffineBuilder;

import java.util.Arrays;
import java.util.Comparator;

/**  在一座城市里，你需要建 n 栋新的建筑。这些新的建筑会从 1 到 n 编号排成一列。

 这座城市对这些新建筑有一些规定：

 每栋建筑的高度必须是一个非负整数。
 第一栋建筑的高度 必须 是 0 。
 任意两栋相邻建筑的高度差 不能超过  1 。
 除此以外，某些建筑还有额外的最高高度限制。这些限制会以二维整数数组 restrictions 的形式给出，其中 restrictions[i] = [idi, maxHeighti] ，表示建筑 idi 的高度 不能超过 maxHeighti 。

 题目保证每栋建筑在 restrictions 中 至多出现一次 ，同时建筑 1 不会 出现在 restrictions 中。

 请你返回 最高 建筑能达到的 最高高度 。
 输入：n = 5, restrictions = [[2,1],[4,1]]
 输出：2
 解释：上图中的绿色区域为每栋建筑被允许的最高高度。
 我们可以使建筑高度分别为 [0,1,2,1,2] ，最高建筑的高度为 2 。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/maximum-building-height
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 *
 * */
public class maxBuilding {
    public static void main(String[] args) {
        int[][]  restrictions = {{5,3},{2,5},{7,4},{10,3}};
        System.out.println(maxBuilding(10,restrictions));

    }
    public static int maxBuilding(int n, int[][] restrictions) {
        int [] arr=new int[n];int maxL=0;int base = 0;
        if(restrictions.length==0){
            return n-1;
        }
        Arrays.sort(restrictions, Comparator.comparing(x->x[0]));

        return maxL;

    }

    public static int doNext(int i, int j ,int[] arr,int max) {
        int len=Math.abs(j-i);
        int start=arr[i]==-1?0:arr[i];
        int end=arr[j]==-1?0:arr[j];
        int height= (arr[j]+arr[i]+len)/2;
        return   height>max?height:max;
    }
}
//class Solution {
//    public int maxBuilding(int n, int[][] restrictions) {
//        int l=restrictions.length;
//        if(l==0){
//            return n-1;
//        }
//        Arrays.sort(restrictions,Comparator.comparing(x->x[0]));
//        int[][] r;
//        if(restrictions[l-1][0]==n){
//            r=new int[l+1][2];
//            r[0]=new int[]{1,0};
//            for(int i=0;i<l;i++){
//                r[i+1]=restrictions[i];
//            }
//        }
//        else{
//            r=new int[l+2][2];
//            r[0]=new int[]{1,0};
//            for(int i=0;i<l;i++){
//                r[i+1]=restrictions[i];
//            }
//            r[l+1]=new int[]{n,n-1};
//        }
//        int res=0;
//        l=r.length;
//        for(int i=1;i<l;i++){
//            r[i][1]=Math.min(r[i][1],r[i-1][1]+r[i][0]-r[i-1][0]);
//        }
//        for(int i=l-2;i>=0;i--){
//            r[i][1]=Math.min(r[i][1],r[i+1][1]+r[i+1][0]-r[i][0]);
//        }
//        for(int i=1;i<l;i++){
//            res=Math.max(res,(r[i][0]-r[i-1][0]+r[i][1]+r[i-1][1])/2);
//        }
//        return res;
//    }
//
//}