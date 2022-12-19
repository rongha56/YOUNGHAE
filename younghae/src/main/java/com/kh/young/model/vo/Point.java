package com.kh.young.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Point {
	private int pointNum;
	private int pointTotal;
	private String pointContent;
	private String pointAmount;
	private Date PointDate;
	private int userNum;
}
