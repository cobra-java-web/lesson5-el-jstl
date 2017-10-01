package io.cobra.javaweb.bean;

/**
 * Sample Bean
 *
 * @author duongnguyen
 */
public class SampleBean {

	/** Name */
	private String name;

	/** Age */
	private int age;

	/** Married status */
	private boolean married;

	/**
	 * Default Constructor
	 */
	public SampleBean() {
		super();
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the age
	 */
	public int getAge() {
		return this.age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}

	/**
	 * @return the married
	 */
	public boolean isMarried() {
		return this.married;
	}

	/**
	 * @param married the married to set
	 */
	public void setMarried(boolean married) {
		this.married = married;
	}
}
