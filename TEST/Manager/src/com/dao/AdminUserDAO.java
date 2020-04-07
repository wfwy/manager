package com.dao;

import com.DBUtil.JdbcConnection;
import com.vo.AdminUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminUserDAO {


    public String login(AdminUser adminuser) {
        String name=null;
        String pwd=null;
        String sql = "select username from admin where username=? and password = ?";
        try{
        	System.out.println(".....");
            Connection conn= JdbcConnection.getConn();
            System.out.println("数据库连接成功！");
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,adminuser.getUsername());
            pstm.setString(2,adminuser.getPassword());
            ResultSet rs=pstm.executeQuery();
            if (rs.next()){
                name=rs.getString("username");
                System.out.println(name);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
            return name;
    }
    
    
    public void changepwd(AdminUser adminUser) {
    	Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(adminUser.getUsername());
        System.out.println(adminUser.getPassword());
        String sql="update admin set password=? where username='"+adminUser.getUsername()+"'";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, adminUser.getPassword());
                       
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	
    	
		
	}
    
}
