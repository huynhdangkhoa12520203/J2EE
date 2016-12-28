package com.model;
// Generated Jun 13, 2016 12:19:55 PM by Hibernate Tools 4.0.0

import com.model.Roles;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Users generated by hbm2java
 */
@Entity
@Table(name = "users")
public class Users implements java.io.Serializable {

	private Integer userId;
	private Roles roles;
	private String username;
	private String email;
	private String password;
	private Set<Blog> blogs = new HashSet<Blog>(0);

	public Users() {
	}

	public Users(Roles roles, String username, String email, String password) {
		this.roles = roles;
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public Users(Roles roles, String username, String email, String password, Set<Blog> blogs) {
		this.roles = roles;
		this.username = username;
		this.email = email;
		this.password = password;
		this.blogs = blogs;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "userID", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "role_id", nullable = false)
	public Roles getRoles() {
		return this.roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	@Column(name = "username", nullable = false)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", nullable = false)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
//	public Set<Blog> getBlogs() {
//		return this.blogs;
//	}
//
//	public void setBlogs(Set<Blog> blogs) {
//		this.blogs = blogs;
//	}

}