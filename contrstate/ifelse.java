import java.util.*;
class Sample
{
	public static void main(String[]args)
	{
		//String place ="hyd";
		System.out.println("Enter The place");
	        Scanner scan = new Scanner(System.in);
       		String place=scan.next();	       
		if(place.equals("hyd"))
		{
			System.out.println("WelCome to Hyd");
		}
		else 
		{
			System.out.println("WelCome to Eidiko");
		}
	}
}
