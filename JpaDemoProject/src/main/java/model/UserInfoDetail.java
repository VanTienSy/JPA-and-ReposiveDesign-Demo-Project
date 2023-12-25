package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_info_detail")
public class UserInfoDetail {

	@Id //プライマリキー
	@GeneratedValue(strategy = GenerationType.IDENTITY) //Idの値はデータベースによって自動的に生成され、1ずつ増加し、一意の値を生成します。
	@Column(name = "user_info_detail_id") //データベースに生成されるテーブルのフィールド名を指定する。
	private int id;

	@Column(name = "age")
	private int age;

	//@Column(name = "age", columnDefinition = "INT")
	//private String age;

	@Column(name = "address", nullable = false, columnDefinition = "TEXT")
	private String address;

	@Column(name = "telephone")
	private String teltephone;

	public UserInfoDetail(int id, int age, String address, String teltephone) {
		super();
		this.id = id;
		this.age = age;
		this.address = address;
		this.teltephone = teltephone;
	}

	public UserInfoDetail() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTeltephone() {
		return teltephone;
	}

	public void setTeltephone(String teltephone) {
		this.teltephone = teltephone;
	}

}
