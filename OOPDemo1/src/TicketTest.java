import java.util.Scanner;

public class TicketTest {

	public static void main(String[] args) {
		
		Ticket ticket=new Ticket();//创建对象
		Scanner input =new Scanner(System.in);
		System.out.println("请输入姓名");
		ticket.name=input.next();
		System.out.println("请输入年龄");
		ticket.age=input.nextInt();
	
		
		
		ticket.showMes();

	}

}
