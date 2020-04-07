 package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DBUtil.JdbcConnection;
import com.vo.Score;
import com.vo.ScoreType;
import com.vo.StudentUser;

public class ScoreDAO {
	
	public void addaapoint(Score score) {
	 	Connection connection = null;
        PreparedStatement pstmt = null;
        String sql = "insert into score(s_num,name,itme,score,remark,time,user) value (?,?,?,?,?,now(),?)";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql); 
            pstmt.setString(1, score.getS_num());
            pstmt.setString(2, score.getName());
            pstmt.setString(3, score.getItem());
            pstmt.setString(4, score.getScore());
            pstmt.setString(5, score.getRemark());
            pstmt.setString(6, score.getUser());           
            pstmt.executeUpdate();
            System.out.println(score.getName());
        }catch(SQLException e){
            e.printStackTrace();
        }
        
	}
	
	public void deladdpoint(Score score) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql="delete from score where id=?";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            System.out.println(score.getId()+"555");
            pstmt.setInt(1, score.getId());            
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	public ArrayList<Score> getaddpoint(){
		ArrayList<Score> scores=new ArrayList<>();
		String sql="select addpoint.s_name,addpoint.type,item.score,addpoint.remark from addpoint,item where addpoint.type=item.item";		
		try {
			Connection conn= JdbcConnection.getConn();
			PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()) {
            	Score score=new Score();
            	//score.setId(rs.getInt("id"));
            	score.setName(rs.getString("s_name"));
            	score.setType(rs.getString("type"));
            	score.setScore(rs.getString("score"));
            	score.setRemark(rs.getString("remark"));
            	scores.add(score);
            	System.out.println(score.getName());
            }
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return scores;		
	}
	
	public void updatescore(Score score) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        System.out.println(score.getId());
        String sql="update score set s_num=?,name=?,itme=?,score=?,remark=?,retime=now(),reuser=? where id="+score.getId();
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, score.getS_num());
            pstmt.setString(2, score.getName());
            pstmt.setString(3, score.getItem());
            pstmt.setString(4, score.getScore());
            pstmt.setString(5, score.getRemark());
            pstmt.setString(6, score.getReuser());      
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	
	public void dedpoint(Score score) {
	 	Connection connection = null;
        PreparedStatement pstmt = null;
        String sql = "insert into dedpoint(s_name,type,remark) value (?,?,?)";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);           
            pstmt.setString(1, score.getName());
            pstmt.setString(2, score.getType());
            pstmt.setString(3, score.getRemark());           
            pstmt.executeUpdate();
            System.out.println(score.getName());
        }catch(SQLException e){
            e.printStackTrace();
        }
        
	}
	
	public void deldedpoint(Score score) {
		Connection connection = null;
        PreparedStatement pstmt = null;
        String sql="delete from dedpoint where s_name=?";
        try {
            connection=JdbcConnection.getConn();	             
            pstmt = connection.prepareStatement(sql);          
            pstmt.setString(1, score.getName());             
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
	}
	
	public ArrayList<Score> getdedpoint(){
		ArrayList<Score> scores=new ArrayList<>();
		String sql="select dedpoint.s_name,dedpoint.type,item.score,dedpoint.remark from dedpoint,item where dedpoint.type=item.item";		
		try {
			Connection conn= JdbcConnection.getConn();
			PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()) {
            	Score score=new Score();
            	score.setName(rs.getString("s_name"));
            	score.setType(rs.getString("type"));
            	score.setScore(rs.getString("score"));
            	score.setRemark(rs.getString("remark"));
            	scores.add(score);
            	System.out.println(score.getId());
            }
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return scores;		
	}
	
}
