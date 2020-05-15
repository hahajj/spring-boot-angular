import java.util.Arrays;
import java.util.Stack;

public class dfsSort {//A 到 B 最短距离
    private static int[] A = {1, 1};
    private static int[] B = {2, 2};
    private static int maze[][]={{0,-10,-10,0},{0,0,0,0},{0,0,0,0},{0,-10,0,0}};//障碍物标记为-10
    private static int[] dx = {0, 1, 0, -1};//xy 上下移动 下表增长量
    private static int[] dy = {-1, 0, 1, 0};

    public static void main(String[] args) {
        dfs(A[0], A[1], maze);
    }


    private static boolean dfs(int x, int y, int maze[][]) {//下表  二维数组
        Stack<Integer[]> stack = new Stack<>();
        stack.push(new Integer[]{x, y});
        maze[x][y] = -100;//起点标记为-100
        while (!stack.isEmpty()) {
            for(int[] item :maze){
                System.out.println(Arrays.toString(item));  //能走
            }
            System.out.println("分割符--------------");
            Integer[] pos = stack.pop();
            x = pos[0];
            y = pos[1];
            if (x == B[0] && y == B[1]) {
                maze[x][y]=100;//终点
                for(int[] item :maze){
                    System.out.println(Arrays.toString(item));  //能走
                }
                return true;
            }
            for (int d = 0; d < 4; d++) {//四个方向 上下左右
                int i = x + dx[d], j = y + dy[d];
                System.out.println("x"+i+"y"+y+"size"+stack.size());
                if ((isSafe(maze, i, j,stack.size()+1))) {
                    stack.push(new Integer[] {i,j});
                    while(maze[i][j]>stack.size()+1){
                        maze[i][j]=stack.size();

                    }

                }
            }
        }
        return false;
    }

    private static boolean isSafe(int maze[][], int x, int y,int len) {
        if (x <0||x>=maze.length ||y < 0||y>=maze[0].length || maze[x][y] < 0) {
            return false;
        }
        return true;
    }
}

