package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DBUtil.JdbcConnection;
import com.vo.*;
public class ScoreTypeDAO {
	
	public void ScoreType(ScoreType scoreType) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql = "insert into item(type,item,score) value (?,?,?)";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, scoreType.getType());
            pstmt.setString(2, scoreType.getItem());
            pstmt.setString(3, scoreType.getScore());
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	public void delscore_type(ScoreType scoreType) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql="delete from item where id=?";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);          
            pstmt.setInt(1, scoreType.getId());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	public ArrayList<ScoreType> getscore_type(){
		ArrayList<ScoreType> scoreTypes=new ArrayList<>();
		String sql="select * from item";		
		try {
			Connection conn= JdbcConnection.getConn();
			PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()) {
            	ScoreType scoreType=new ScoreType();
            	scoreType.setType(rs.getString("type"));
            	scoreType.setItem(rs.getString("item"));
            	scoreType.setScore(rs.getString("score"));
            	scoreTypes.add(scoreType);
            	System.out.println(scoreType.getItem());
            }
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return scoreTypes;		
	}

}
