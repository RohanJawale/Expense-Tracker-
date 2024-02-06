package com.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="expenses")
@Getter
@Setter
@ToString

public class Expense {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String expense_name;
	private BigDecimal amount;
	private String note;
	@JsonFormat(pattern="yyyy-MM-dd",shape=Shape.STRING)
	private String created_at;
	private Long uid;
	
	
	
	
	
	
}
