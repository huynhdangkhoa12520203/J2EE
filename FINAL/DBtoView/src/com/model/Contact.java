package com.model;
// Generated Jun 7, 2016 8:01:22 PM by Hibernate Tools 4.0.0

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Users generated by hbm2java
 */
@Entity
@Table(name = "contact", catalog = "thoitrang")
public class Contact implements java.io.Serializable {

	private Integer contactID;
	private String name;
	private String 	title;
	private String email;
	private String content;

	public Contact() {
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "contactID", unique = true, nullable = false)
	public Integer getContactID() {
		return contactID;
	}

	public void setContactID(Integer contactID) {
		this.contactID = contactID;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "title", nullable = false)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", nullable = false)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
