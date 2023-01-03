class Car
{
	public String brand;
	public int time;
	public static int speed=100;
	public Car(String brand,int time)
	{
		this.brand=brand;
		this.time=time;
	}
	public void distance()
	{
		int distanc=speed*time;
		System.out.println("spped of car: "+distanc);
		System.out.println("Car brand: "+brand);
	}
}
class CarMain
{
	public static void main(String...args)
	{
		Car c=new Car("Auto",3);
		c.distance();
	}
}
