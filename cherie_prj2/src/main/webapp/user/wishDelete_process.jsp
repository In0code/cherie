<%@page import="user.dao.WishListDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page info="사용자 / 관심상품 / '삭제하기'버튼을 누르면 리스트에서 상품 삭제(delete) - 인영"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
/* 사용자 / 관심상품 / '삭제하기'버튼을 누르면 리스트에서 상품 삭제(delete) - 인영 */
WishListDAO wlDAO=WishListDAO.getInstance();
try{
	String gcode=request.getParameter("gcode");
	String id=(String)session.getAttribute("sesId");
	
	 wlDAO.deleteWishList(id, gcode);
	
}catch(SQLException se){
	se.printStackTrace();
}//end catch

%>