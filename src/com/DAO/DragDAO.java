package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.DragBean;
import com.Connection.Connect;

public class DragDAO {

	Connection con;
	Statement st;
	ResultSet rs;
	
	public DragDAO(){
		con = Connect.getConnection();
	}
	
	public boolean insertDragItem(float xpos,float ypos){
		DragBean dragBean = new DragBean();
		String sql = "UPDATE dragdata set xpos='"+xpos+"' , ypos='"+ypos+"' where id=1 ";
	
	try {
		st = con.createStatement();
		int i = st.executeUpdate(sql);

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	};
	
	return true;
	}
	
	public boolean updateDragItem(int id,float xpos,float ypos){
		DragBean dragBean = new DragBean();
		if(id<3)
			return false;
		
		String sql = "UPDATE dragdata set xpos='"+xpos+"' , ypos='"+ypos+"' where id='"+id+"' ";
	
	try {
		st = con.createStatement();
		int i = st.executeUpdate(sql);

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	};
	
	return true;
	}
	
	public boolean resetDragItem(int id,float xpos,float ypos){
		DragBean dragBean = new DragBean();
		if(id<3)
			return false;

		dragBean = fetchDragItem(id-12);
		
		String sql = "UPDATE dragdata set xpos='"+xpos+"' , ypos='"+ypos+"' where id='"+id+"' ";
	
	try {
		st = con.createStatement();
		int i = st.executeUpdate(sql);

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	};
	
	return true;
	}
	
	public DragBean fetchDragItem(int id){
		DragBean dragBean = new DragBean();
		String sql = "SELECT xpos, ypos FROM dragdata where id='"+id+"' ";
	
	try {
		st = con.createStatement();
		rs = st.executeQuery(sql);
		
		if(rs.next()){
			
			dragBean.setXpos(rs.getFloat("xpos"));
			dragBean.setYpos(rs.getFloat("ypos"));
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	};
	
	return dragBean;
	}
}
