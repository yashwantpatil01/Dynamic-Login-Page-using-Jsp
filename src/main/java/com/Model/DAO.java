package com.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Vector;

import javax.sql.rowset.JdbcRowSet;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;

public class DAO {
	
	public static Connection getCon() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd_j76", "root", "root");
			System.out.println(con);
//			create table UserJsp(UserId int primary key auto_increment, 
//			FirstName varchar(20), LastName varchar(20), 
//			Email varchar(35), 
//			Password varchar(10), MobileNo int, Gender varchar(10));
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return con;
	}
	
	
	public static int insertData(Data d) {
		int res=0;
		Connection con=DAO.getCon();
				try {
					String qurey="insert into UserJsp values(?,?,?,?,?,?,?)";
					PreparedStatement pst=con.prepareStatement(qurey);
					pst.setInt(1, d.getUserId());
					pst.setString(2, d.getFirstName());
					pst.setString(3, d.getLastName());
					pst.setString(4, d.getEmail());
					pst.setString(5, d.getPassword());
					pst.setLong(6, d.getMobileNo());
					pst.setString(7, d.getGender());
					
					res=pst.executeUpdate();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
		return res;
		
	}
	
	public static Vector validate() {
		Vector v=new Vector<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			RowSetFactory rsf=RowSetProvider.newFactory();
			JdbcRowSet jrs=rsf.createJdbcRowSet();
			jrs.setUrl("jdbc:mysql://localhost:3306/fsd_j76");
			jrs.setUsername("root");
			jrs.setPassword("root");
			jrs.setCommand("select email, password from UserJsp");
			jrs.execute();
			
			while(jrs.next()) {
				v.add( jrs.getString("email"));
				v.add(jrs.getString("password"));
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
	//DB ->DAO ->FetchAction
	public static List fetchDetails(Data d) {
		List li=new Vector<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			RowSetFactory rsf=RowSetProvider.newFactory();
			JdbcRowSet jrs=rsf.createJdbcRowSet();
			jrs.setUrl("jdbc:mysql://localhost:3306/fsd_j76");
			jrs.setUsername("root");
			jrs.setPassword("root");
			jrs.setCommand("select * from UserJsp where Email=?");
			jrs.setString(1, d.getEmail());
			jrs.execute();
			
			
			/**    ---------------   DataBase Creation ------------------
			 * use fsd_j76;
			 * create table UserJsp(UserId int primary key auto_increment, FirstName varchar(20), LastName varchar(20), Email varchar(35), Password varchar(10), MobileNo long, Gender varchar(10));
			 * desc userjsp;
			 * select * from userjsp;
			 */
			
			while(jrs.next()) {
				d.setUserId(jrs.getInt("UserId"));
				d.setFirstName(jrs.getString("FirstName"));
				d.setLastName(jrs.getString("LastName"));
				d.setEmail(jrs.getString("Email"));
				d.setPassword(jrs.getString("Password"));
				d.setMobileNo(jrs.getLong("MobileNo"));
				d.setGender(jrs.getString("Gender"));

				li.add(d);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return li;
	}
	
	
	public static int editProfile(Data d) {
		int res=0;
		Connection con=DAO.getCon();
		try {
			String sql1="update UserJsp set UserId=?, FirstName=?, LastName=?, Password=?, MobileNo=?, Gender=? where Email=?";
			PreparedStatement pst=con.prepareStatement(sql1);
			pst.setInt(1, d.getUserId());
			pst.setString(2, d.getFirstName());
			pst.setString(3, d.getLastName());
			pst.setString(4, d.getPassword());
			pst.setLong(5, d.getMobileNo());
			pst.setString(6, d.getGender());
			pst.setString(7, d.getEmail());
			
			res=pst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	
	
}
