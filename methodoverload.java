class Adder
{
	static int add(int a, int b)
	{ 
		return a+b;
	}
	static int add(int a, int b , int c)
	{
		return a+b+c;
	}
}
class AdderMain
{
	public static void main(String...args)
	{
		System.out.println(Adder.add(55,88));
		System.out.println(Adder.add(88,54,1));
	}
}
