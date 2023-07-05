package com.kh.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.model.vo.Book;
import com.kh.model.vo.Member;
import com.kh.model.vo.Rent;

import config.ServerInfo;

public class BookDAO implements BookDAOTemplate {
	
	private Properties p = new Properties();
	
	public BookDAO() {
		try {
			p.load(new FileInputStream("src/config/jdbc.properties"));
			try {
				Class.forName(ServerInfo.DRIVER_NAME);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Connection getConnect() throws SQLException {
		return DriverManager.getConnection(ServerInfo.URL, ServerInfo.USER, ServerInfo.PASSWORD);
	}

	@Override
	public void closeAll(PreparedStatement st, Connection conn) throws SQLException {
		st.close();
		conn.close();
	}

	@Override
	public void closeAll(ResultSet rs, PreparedStatement st, Connection conn) throws SQLException {
		rs.close();
		closeAll(st, conn);
	}

	@Override
	public ArrayList<Book> printBookAll() throws SQLException {
		return null;
	}

	@Override
	public int registerBook(Book book) throws SQLException {
		Connection conn = getConnect();
		PreparedStatement st = conn.prepareStatement(p.getProperty("registerMember"));
	}

	@Override
	public int sellBook(int no) throws SQLException {
		return 0;
	}

	@Override
	public int registerMember(Member member) throws SQLException {
		Connection conn = getConnect();
		PreparedStatement st = conn.prepareStatement(p.getProperty("registerMember"));
		st.setString(1, member.getMemberId());
		st.setString(2, member.getMemberPwd());
		st.setString(3, member.getMemberName());
		st.executeUpdate();
		closeAll(st, conn);
		return 0;
		
	}

	@Override
	public Member login(String id, String password) throws SQLException {
		Connection conn = getConnect();
		PreparedStatement st = conn.prepareStatement(p.getProperty("login"));
		st.setString(1, id.getMemberId());
		st.setString(2, password.getmemberPwd);
		ResultSet rs = st.executeQuery();
		Member m = null;
	}

	@Override
	public int deleteMember(String id, String password) throws SQLException {
		// UPDATE - STATUS를 Y로
		return 0;
	}

	@Override
	public int rentBook(Rent rent) throws SQLException {
		return 0;
	}

	@Override
	public int deleteRent(int no) throws SQLException {
		return 0;
	}

	@Override
	public ArrayList<Rent> printRentBook(String id) throws SQLException {
		return null;
	}

}
