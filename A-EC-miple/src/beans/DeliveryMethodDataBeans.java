package beans;

import java.io.Serializable;


/*
 * 特典コース選択(課題仕様の発送方法の処理で代用)
 *
 */
public class DeliveryMethodDataBeans implements Serializable {
	private int id;
	private String name;
	private int price;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
