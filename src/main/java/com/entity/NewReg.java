package com.entity;

import java.util.Arrays;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name="NewRegistrations")
public class NewReg {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	private String name;
	@Column
	private String email;
	@Column
	private String phone;
	@Column
	private String text;
	@Column
	private String experience;
	@Column(name = "resume", columnDefinition = "LONGBLOB")
	@Lob
	private byte[] resume;
	@Column(unique=true)
	private String password;
	
	public NewReg() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone = phone;
	}
	
	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public byte[] getResume() {
		return resume;
	}
	public void setResume(byte[] resume) {
		this.resume = resume;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public NewReg(String name, String email, String phone, String text, String experience, byte[] resume,
			String password) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.text = text;
		this.experience = experience;
		this.resume = resume;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", email=" + email + ", phone=" + phone + ", text="
				+ text + ", experience=" + experience + ", resume=" + Arrays.toString(resume) + ", password="
				+ password + "]";
	}
	
	

}
