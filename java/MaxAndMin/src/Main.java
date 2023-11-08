// 按两次 Shift 打开“随处搜索”对话框并输入 `show whitespaces`，
// 然后按 Enter 键。现在，您可以在代码中看到空格字符。
package MaxAndMin.src;
import java.util.Scanner;
import java.util.Collections.*;
public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double[] numbers = readDouble(scanner);
        findMaxAndMin(numbers);
//        exchangeOrder();//TODO:写一个exchageOrder()方法
    }
    private static double[] readDouble(Scanner scanner){
        double x = scanner.nextDouble();
        double y = scanner.nextDouble();
        return new double[]{x,y};
    }

    private static void findMaxAndMin(double[] numbers){
        double max = numbers[0];
        double min = numbers[0];

        for(double number:numbers){
            if(number > max){
                max = number;
            }
            if(number < min){
                min = number;
            }
        }
        System.out.println("max"+max+"min="+min);
    }


}