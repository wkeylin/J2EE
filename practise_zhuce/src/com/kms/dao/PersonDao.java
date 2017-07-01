package com.kms.dao;

import java.sql.SQLException;

import com.kms.opoj.Person;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class PersonDao extends BaseDao{
	public int addUser(Person p) {
		int i = -1;
		String sql = "insert user(id,passwd,sex,hobby,description) values(?,?,?,?,?)";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		connection = super.getConnection();
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setObject(1, p.getId());
			preparedStatement.setObject(2, p.getPasswd());
			preparedStatement.setObject(3, p.getSex());
			preparedStatement.setObject(4, p.getHobby());
			preparedStatement.setObject(5, p.getDescription());
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				preparedStatement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
}
