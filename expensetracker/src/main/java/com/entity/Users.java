package com.entity;

import java.math.BigInteger;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.springframework.lang.NonNull;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Entity
@Getter
@Setter
@ToString
public class Users {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long uid;
	@Column(nullable=true)
	private String password;
	private String email_id;
	@Column(nullable=true)
	private String phone_no;
    @Column( unique = true ,nullable=true)
	private String uname;
    @Column( nullable = true)
    private String role;
	@OneToMany(targetEntity=Expense.class,cascade=CascadeType.ALL)
	@JoinColumn(name="uid")
	List Expense;

	

}
