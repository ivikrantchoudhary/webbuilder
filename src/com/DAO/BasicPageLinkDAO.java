package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Bean.PageLinkBean;
import com.Bean.PageLinkBean;
import com.Bean.SubCategoryBean;
import com.Connection.Connect;

public class BasicPageLinkDAO
{
		Connection con;
		Statement st;
		ResultSet rs;
		
		public BasicPageLinkDAO(){
			con = Connect.getConnection();
		}
		
		public boolean insertPageItem(String category_id,String subCategory_id, String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
			
			boolean flag=false;
			int id=0;
			String sql = "insert into masterpagelink values(default , '"+category_id+"','"+subCategory_id+"' ,'"+name+"','"+description+"','"+price+"','"+imgURL+"', '"+imgURL1+"', '"+imgURL2+"')";
		
		try {
			st = con.createStatement();
			int i = st.executeUpdate(sql);
			
			if(rs.next()){
				id=rs.getInt(1);
			}
			
			flag = (i==1)?true:false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		return flag;
	}
	
	public ResultSet fetchPageItem(String item_id){
		
		String sql="select * from masterpagelink where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void deletePageItem(String item_id){
		
		String sql="delete from masterpagelink where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updatePageItem(String process,String link){
		boolean flag=false;
		String sql="update masterpagelink set "+process+"='"+link+"' where page_id=2";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
	
	public boolean resetPage(){
		PageLinkBean pageBean = new PageLinkBean();
		boolean flag=true;
		String sql="select * from masterpagelink where page_id= 1";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		sql="update masterpagelink set companyLine='"+pageBean.getCompanyLine()+"', cart='"+pageBean.getCart()+"', login='"+pageBean.getLogin()+"', search='"+pageBean.getSearch()+"', logoURL='"+pageBean.getLogoURL()+"', home='"+pageBean.getHome()+"' , catalog='"+pageBean.getCatalog()+"', aboutUs='"+pageBean.getAboutUs()+"', shopfor='"+pageBean.getShopFor()+"',  shopby='"+pageBean.getShopBy()+"', specialoffers='"+pageBean.getSpecialOffers()+"', adURL='"+pageBean.getAdURL()+"', quickLinks='"+pageBean.getQuickLinks()+"', contactus='"+pageBean.getContactUs()+"', getconnected='"+pageBean.getGetConnected()+"', fcontactus='"+pageBean.getfContactUs()+"', phno='"+pageBean.getPhNo()+"', email='"+pageBean.getEmail()+"', address1='"+pageBean.getFacebookLink()+"', address2='"+pageBean.getTwitterLink()+"', newsletter='"+pageBean.getNewsletter()+"', signupPromo='"+pageBean.getSignupPromo()+"', copyright='"+pageBean.getCopyright()+"', poweredby='"+pageBean.getPoweredBy()+"'  where page_id=2 ";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
	
	public PageLinkBean getPageItemDetail(int page_id){
		PageLinkBean pageBean = new PageLinkBean();
		String sql="select * from masterpagelink where page_id='"+page_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public void viewPageItem(String item_id){
		boolean flag=false;
		String sql="select * from masterpagelink where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<PageLinkBean> showPageItem(){
		
		ArrayList<PageLinkBean> page_list = new ArrayList<PageLinkBean>();
		String sql="select * from masterpagelink";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageLinkBean pageBean = new PageLinkBean();

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageLinkBean> showCollectionPageItem(String category_id){
		
		ArrayList<PageLinkBean> page_list = new ArrayList<PageLinkBean>();
		String sql="select * from masterpagelink where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageLinkBean pageBean = new PageLinkBean();

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageLinkBean> showSubCollectionPageItem(String category_id,String subcategory_id){
		
		ArrayList<PageLinkBean> page_list = new ArrayList<PageLinkBean>();
		String sql="select * from masterpagelink where category_id='"+category_id+"' and subcategory_id='"+subcategory_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageLinkBean pageBean = new PageLinkBean();
				
				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageLinkBean> searchPageItem(String query){
		ArrayList<PageLinkBean> page_list = new ArrayList<PageLinkBean>();
		
		String sql="select * from masterpagelink where UPPER(name) like UPPER('%"+query+"%')";
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()){
				PageLinkBean pageBean = new PageLinkBean();

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setFacebookLink(rs.getString("facebookLink"));
				pageBean.setTwitterLink(rs.getString("twitterLink"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
				
				page_list.add(pageBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return page_list;
		}	
}

