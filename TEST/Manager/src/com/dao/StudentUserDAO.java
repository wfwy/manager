package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DBUtil.JdbcConnection;
import com.vo.AdminUser;
import com.vo.StudentUser;

public class StudentUserDAO {
	public String login(StudentUser studentUser) {
		String name=null;
        String sql = "select name from student where name=? and password = ?";
        try{
            Connection conn= JdbcConnection.getConn();
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,studentUser.getName());
            pstm.setString(2,studentUser.getPassword());
            ResultSet rs=pstm.executeQuery();
            if (rs.next()){
                name=rs.getString("name");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
            return name;
	}
	
	public void addStudent(StudentUser studentUser) {
	 	Connection connection = null;
        PreparedStatement pstmt = null;
        String sql = "insert into student(s_num,name,sex,age,classes,major,college, password) value (?,?,?,?,?,?,?,?)";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);           
            pstmt.setString(1, studentUser.getS_num());
            pstmt.setString(2, studentUser.getName());
            pstmt.setString(3, studentUser.getSex());
            pstmt.setString(4, studentUser.getAge());
            pstmt.setString(5, studentUser.getClasses());
            pstmt.setString(6, studentUser.getMajor());
            pstmt.setString(7, studentUser.getCollege()); 
            pstmt.setString(8, studentUser.getPassword());            
            pstmt.executeUpdate();
            System.out.println(studentUser.getClasses());
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
		

	public void delStudent(StudentUser studentUser) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql="delete from student where s_num=?";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);          
            pstmt.setString(1, studentUser.getS_num());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}

	public void updateStudent(StudentUser studentUser) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(studentUser.getAge());
        String sql="update student set s_num=?,name=?,sex=?,age=?,classes=?,major=?,college=?,password=? where s_num="+studentUser.getS_num();
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            
            pstmt.setString(1, studentUser.getS_num());
            pstmt.setString(2, studentUser.getName());
            pstmt.setString(3, studentUser.getSex());
            pstmt.setString(4, studentUser.getAge());
            pstmt.setString(5, studentUser.getClasses());
            pstmt.setString(6, studentUser.getMajor());
            pstmt.setString(7, studentUser.getCollege());
            pstmt.setString(8, studentUser.getPassword());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	
	public ArrayList<StudentUser> getStudent(){
		ArrayList<StudentUser> studentUsers=new ArrayList<>();
		String sql="select * from student";		
		try {
			Connection conn= JdbcConnection.getConn();
			PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()) {
            	StudentUser studentUser=new StudentUser();
            	studentUser.setS_num(rs.getString("s_num"));
            	studentUser.setName(rs.getString("name"));
            	studentUser.setSex(rs.getString("sex"));
            	studentUser.setAge(rs.getString("age"));
            	studentUser.setClasses(rs.getString("classes"));
            	studentUser.setMajor(rs.getString("major"));
            	studentUser.setCollege(rs.getString("college"));
            	studentUser.setPassword(rs.getString("password"));           	
            	studentUsers.add(studentUser);
            }
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return studentUsers;		
	}
	
	public void changepwd(StudentUser studentUser) {
    	Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(studentUser.getName());
        System.out.println(studentUser.getPassword());
        String sql="update student set password=? wherename='"+studentUser.getName()+"'";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, studentUser.getPassword());
                       
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	
    	
		
	}
	
}
