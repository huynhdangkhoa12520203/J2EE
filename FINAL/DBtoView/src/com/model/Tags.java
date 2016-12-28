package com.model;
// Generated Jun 7, 2016 8:01:22 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name = "tags", catalog = "thoitrang")
public class Tags implements java.io.Serializable {

	private Integer tagId;
	private String tagName;
	private Set<Products> productses = new HashSet<Products>(0);

	public Tags() {
	}

	public Tags(String tagName) {
		this.tagName = tagName;
	}

	public Tags(String tagName, Set productses) {
		this.tagName = tagName;
		this.productses = productses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "tagID", unique = true, nullable = false)
	public Integer getTagId() {
		return this.tagId;
	}

	public void setTagId(Integer tagId) {
		this.tagId = tagId;
	}

	@Column(name = "tagName", nullable = false)
	public String getTagName() {
		return this.tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "tagses")
	public Set<Products> getProductses() {
		return this.productses;
	}

	public void setProductses(Set<Products> productses) {
		this.productses = productses;
	}

}
