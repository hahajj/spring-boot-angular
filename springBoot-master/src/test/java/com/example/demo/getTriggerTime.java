package com.example.demo;

import java.util.Arrays;

/**   取任意数量数字  不能选取连续下标 加起来最大。首尾不相联
*
* */
public class getTriggerTime {
    public static void main(String[] args) {
//        int arr[][] = {{2,8,4},{2,5,0},{10,9,8}};
//        int arr1[][] = {{2,11,3},{15,10,7},{9,17,12},{8,1,14}};
//        int arr[][] = {{1,1,1}};
//        int arr1[][] = {{0,0,0}};

        int arr[][] = {{0,4,5},{4,8,8},{8,6,1},{10,10,0}};
        int arr1[][] ={{12,11,16},{20,2,6},{9,2,6},{10,18,3},{8,14,9}};
        System.out.println(Arrays.toString(getTriggerTime(arr,arr1)));

    }
    public static int[] getTriggerTime(int[][] increase, int[][] requirements) {
        int[] arr=new int[requirements.length];
        for(int i=0;i<increase.length;i++){
            for(int j=0;j<3;j++){
                if(i>0){
                    increase[i][j]=increase[i][j]+increase[i-1][j];
                }else{
                    increase[i][j]=increase[i][j];
                }
            }
        }

        for(int z=0;z<(requirements.length/2)+1;z++){
            arr[z]=-1;
            int zz=0;
            if(requirements[z][0]==0&&requirements[z][1]==0&&requirements[z][2]==0){
                arr[z]=0;
            }

            if(requirements.length-z-1>z){
                zz=requirements.length-z-1;
                arr[zz]=-1;
                if(requirements[zz][0]==0&&requirements[zz][1]==0&&requirements[zz][2]==0){
                    arr[zz]=0;
                }
            }
            for(int i=0;i<increase.length;i++){
                if(increase[i][0]>=requirements[z][0]&&increase[i][1]>=requirements[z][1]&&increase[i][2]>=requirements[z][2]&&arr[z]==-1){
                    arr[z]=i+1;
                }
                if(zz>0&&increase[i][0]>=requirements[zz][0]&&increase[i][1]>=requirements[zz][1]&&increase[i][2]>=requirements[zz][2]&&arr[zz]==-1){
                    arr[zz]=i+1;
                }
            }
        }
        return  arr;
    }

}