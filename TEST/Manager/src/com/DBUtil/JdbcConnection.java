package com.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
    private static final String DBDRIVER="com.mysql.jdbc.Driver";
    private static final String DBURL="jdbc:mysql://localhost:3306/db_manager?useUnicode=true&characterEncoding=utf8";
    private static final String DBUSER="root";
    private static final String DBPASS="123456";
    private Connection connection=null;
    public static Connection getConn() {
        Connection con = null;
        try{
        	System.out.println("加载数据库驱动...");
            Class.forName(DBDRIVER);
            System.out.println("数据库驱动加载成功！");
            
            System.out.println("连接数据库..");
            con=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
            System.out.println(".....");
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }
    public Connection getConnection(){
        return connection;
    }
    public void close() throws Exception{
        if(connection!=null){
            try {
                connection.close();
            } catch (Exception e) {
                throw e;
            }
        }

    }
}
