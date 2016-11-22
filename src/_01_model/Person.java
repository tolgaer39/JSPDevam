package _01_model;

public class Person {

	private String name;
	private String surname;
	private int birthYear;
	
	// jsp:useBean kullanmak icin bizim burda varsayilan defaulf yapilandirici/constractor a ihtiyacimiz var..
	
	public Person(){
		System.out.println("varsayilan yapilandirici Person()...");
	}
	
	public Person(String name, String surname, int birthYear) {
		super();
		this.name = name;
		this.surname = surname;
		this.birthYear = birthYear;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public int getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(int birthYear) {
		this.birthYear = birthYear;
	}
	
}
