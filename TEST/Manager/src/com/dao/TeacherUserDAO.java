package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DBUtil.JdbcConnection;
import com.vo.StudentUser;
import com.vo.TeacherUser;

public class TeacherUserDAO {

	public String login(TeacherUser teacheruser) {
		String name=null;
        String sql = "select name from teacher where name=? and password = ?";
        
        try{
            Connection conn= JdbcConnection.getConn();
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,teacheruser.getName());
            pstm.setString(2,teacheruser.getPassword());
            ResultSet rs=pstm.executeQuery();
            if (rs.next()){
                name=rs.getString("name");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
            return name;
	}
	
	public void addteacher(TeacherUser teacherUser) {
	 	Connection connection = null;
        PreparedStatement pstmt = null;
        String sql = "insert into teacher(t_num,name,sex,age,title,college, password) value (?,?,?,?,?,?,?)";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);           
            pstmt.setString(1, teacherUser.getT_num());
            pstmt.setString(2, teacherUser.getName());
            pstmt.setString(3, teacherUser.getSex());
            pstmt.setString(4, teacherUser.getAge());
            pstmt.setString(5, teacherUser.getTitle());
            pstmt.setString(6, teacherUser.getCollege());
            pstmt.setString(7, teacherUser.getPassword());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
		

	public void delteacher(TeacherUser teacherUser) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql="delete from teacher where t_num=?";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);          
            pstmt.setString(1, teacherUser.getT_num());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}

	public void updateteacher(TeacherUser teacherUser) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(teacherUser.getAge());
        String sql="update teacher set t_num=?,name=?,sex=?,age=?,title=?,college=?,password=? where t_num="+teacherUser.getT_num();
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, teacherUser.getT_num());
            pstmt.setString(2, teacherUser.getName());
            pstmt.setString(3, teacherUser.getSex());
            pstmt.setString(4, teacherUser.getAge());
            pstmt.setString(5, teacherUser.getTitle());
            pstmt.setString(6, teacherUser.getCollege());
            pstmt.setString(7, teacherUser.getPassword());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	
	public ArrayList<TeacherUser> getTeacher(){
		ArrayList<TeacherUser> teacherUsers=new ArrayList<>();
		String sql="select * from teacher";		
		try {
			Connection conn= JdbcConnection.getConn();
			PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()) {
            	TeacherUser teacherUser=new TeacherUser();
            	teacherUser.setT_num(rs.getString("t_num"));
            	teacherUser.setName(rs.getString("name"));
            	teacherUser.setSex(rs.getString("sex"));
            	teacherUser.setAge(rs.getString("age"));
            	teacherUser.setTitle(rs.getString("title"));
            	teacherUser.setCollege(rs.getString("college"));
            	teacherUser.setPassword(rs.getString("password"));           	
            	teacherUsers.add(teacherUser);
            	System.out.println(teacherUser.getAge());
            }
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return teacherUsers;		
	}
	
	public void changepwd(TeacherUser teacherUser) {
    	Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(teacherUser.getName());
        System.out.println(teacherUser.getPassword());
        String sql="update teacher set password=? where name='"+teacherUser.getName()+"'";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, teacherUser.getPassword());
                       
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	
}
}
