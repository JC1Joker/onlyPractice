import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入学生成绩");
        int score = scanner.nextInt();

        System.out.println("使用switch判断");
        switch (score / 10) {
            case 10:
            case 9:
                System.out.println("优秀");
                break;
            case 8:
                System.out.println("良好");
                break;
            case 7:
            case 6:
                System.out.println("及格");
                break;
            default:
                if (score >= 0 && score <= 60) {
                    System.out.println("不及格");
                } else {
                    System.out.println("您输入的数字无效");
                }
        }


        System.out.println("使用if判断");
        if(score >= 90 && score <= 100){
            System.out.println("优秀");
        } else if(score >= 80 && score < 90){
            System.out.println("良好");
        } else if(score >= 70 && score < 80){
            System.out.println("中等");
        } else if(score >= 60 && score < 70){
            System.out.println("及格");
        } else if(score >= 0 && score < 60){
            System.out.println("不及格");
        } else {
            System.out.println("输入的分数无效");
        }


    }
}