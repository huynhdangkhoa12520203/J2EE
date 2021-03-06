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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Products generated by hbm2java
 */
@Entity
@Table(name = "products", catalog = "thoitrang")
public class Products implements java.io.Serializable {

	private Integer productId;
	private Suppliers suppliers;
	private Categories categories;
	private String productName;
	private String unit;
	private double price;
	private int stock;
	private boolean available;
	private Set<Tags> tagses = new HashSet<Tags>(0);
	private Set<Images> imageses = new HashSet<Images>(0);
	private Set<Orderdetails> orderdetailses = new HashSet<Orderdetails>(0);
	private Set<Productoption> productoptions = new HashSet<Productoption>(0);

	public Products() {
	}

	public Products(Suppliers suppliers, Categories categories, String productName, String unit, double price,
			int stock, boolean available) {
		this.suppliers = suppliers;
		this.categories = categories;
		this.productName = productName;
		this.unit = unit;
		this.price = price;
		this.stock = stock;
		this.available = available;
	}

	public Products(Suppliers suppliers, Categories categories, String productName, String unit, double price,
			int stock, boolean available, Set tagses, Set imageses, Set orderdetailses, Set productoptions) {
		this.suppliers = suppliers;
		this.categories = categories;
		this.productName = productName;
		this.unit = unit;
		this.price = price;
		this.stock = stock;
		this.available = available;
		this.tagses = tagses;
		this.imageses = imageses;
		this.orderdetailses = orderdetailses;
		this.productoptions = productoptions;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "productID", unique = true, nullable = false)
	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "supplierID", nullable = false)
	public Suppliers getSuppliers() {
		return this.suppliers;
	}

	public void setSuppliers(Suppliers suppliers) {
		this.suppliers = suppliers;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryID", nullable = false)
	public Categories getCategories() {
		return this.categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	@Column(name = "productName", nullable = false)
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "unit", nullable = false)
	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	@Column(name = "price", nullable = false, precision = 22, scale = 0)
	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Column(name = "stock", nullable = false)
	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Column(name = "available", nullable = false)
	public boolean isAvailable() {
		return this.available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "producttag", catalog = "thoitrang", joinColumns = {
			@JoinColumn(name = "productID", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "tagID", nullable = false, updatable = false) })
	public Set<Tags> getTagses() {
		return this.tagses;
	}

	public void setTagses(Set<Tags> tagses) {
		this.tagses = tagses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "products")
	public Set<Images> getImageses() {
		return this.imageses;
	}

	public void setImageses(Set<Images> imageses) {
		this.imageses = imageses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "products")
	public Set<Orderdetails> getOrderdetailses() {
		return this.orderdetailses;
	}

	public void setOrderdetailses(Set<Orderdetails> orderdetailses) {
		this.orderdetailses = orderdetailses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "products")
	public Set<Productoption> getProductoptions() {
		return this.productoptions;
	}

	public void setProductoptions(Set<Productoption> productoptions) {
		this.productoptions = productoptions;
	}
}
