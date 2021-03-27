package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Bill;


public class BillDao {
	 public int khaiBaoThue(Bill bill) throws ClassNotFoundException {
	        String INSERT_USERS_SQL = "INSERT INTO bill" +
	            "  (date, luong, songuoi, tienthue, maSoThue) VALUES " +
	            " (?, ?, ?, ?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/qlthue?allowPublicKeyRetrieval=true&useSSL=false", "root", "datnguyen1301");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setString(1, bill.getDate());
	            preparedStatement.setString(2, bill.getLuong());
	            preparedStatement.setString(3, bill.getSonguoi());
	            preparedStatement.setString(4, bill.getTienThue());
	            preparedStatement.setString(5, bill.getMst());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return result;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
}
