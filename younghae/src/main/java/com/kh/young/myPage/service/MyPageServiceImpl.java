package com.kh.young.myPage.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.young.model.vo.Coupon;
import com.kh.young.model.vo.ExpertUser;
import com.kh.young.model.vo.GeneralUser;
import com.kh.young.model.vo.Member;
import com.kh.young.model.vo.Point;
import com.kh.young.myPage.dao.MyPageDAO;

@Service("myService")
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	private MyPageDAO myDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ExpertUser selectExpert(int id) {
		return myDAO.selectExpert(sqlSession, id);
	}
	
	@Override
	public int updateProfile(ExpertUser eu) {
		return myDAO.updateProfile(sqlSession, eu);
	}
	
	@Override
	public GeneralUser selectGeneral(int id) {
		return myDAO.selectGeneral(sqlSession, id);
	}
	
	@Override
	public int pointInsert(HashMap<String, Object> map) {
		return myDAO.pointInsert(sqlSession, map);
	}
	
	@Override
	public Point selectPoint(int id) {
		return myDAO.selectPoint(sqlSession, id);
	}
	
	@Override
	public ArrayList<Point> selectAllPoint(int id) {
		return myDAO.selectAllPoint(sqlSession, id);
	}

	@Override
	public int pointTotal(HashMap<String, Object> map) {
		return myDAO.pointTotal(sqlSession, map);
	}
	
	@Override
	public int deleteMember(int userNum) {
		return myDAO.deleteMember(sqlSession, userNum);
	}
	
	@Override
	public Member selectAllMember(int id) {
		return myDAO.selectAllMember(sqlSession, id);
	}
	
	@Override
	public ArrayList<Coupon> selectAllCoupon(int id) {
		return myDAO.selectAllCoupon(sqlSession, id);
	}
	
	@Override
	public ArrayList<Coupon> selectAdminCoupon(String str) {
		return myDAO.selectAdminCoupon(sqlSession, str);
	}
	
	@Override
	public int couponInsert(Coupon c) {
		return myDAO.couponInsert(sqlSession, c);
	}
}
