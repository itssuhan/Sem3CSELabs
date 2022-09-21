import java.util.*;
class StringToComma
{
    public static void main(String[] args)
    {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.println("Enter a number ");
            int num = sc.nextInt();
            String res = String.format("%,03d",num);
            System.out.println(res);
        }
    }
}