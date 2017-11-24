package com.acring.util;
import com.acring.pojo.Student;
import java.sql.*;

public class DBHelper{
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/student";

	static final String DBUSER = "root";
	static final String DBPASSWORD = "Mlf7netS";

	private Connection conn;
	private Statement stmt;

	public DBHelper(){
		try{
			Class.forName(this.JDBC_DRIVER);
			System.out.println("connecting to DB...");
			this.conn = DriverManager.getConnection(DB_URL, DBUSER, DBPASSWORD);

			this.stmt = this.conn.createStatement();

			String sql = "CREATE TABLE IF NOT EXISTS student(" + 
						"id VARCHAR(25) not null, "+
						"password VARCHAR(12) not null,"+
						"name VARCHAR(25) not null,"+
						"age INT ,"+
						"classes VARCHAR(25) "+
						");";

			this.stmt.executeUpdate(sql);
			System.out.println("init student table finished!!");
		}catch(Exception e){
			e.printStackTrace();
		}

	}

	public boolean insertStudent(Student student){
		if(student == null){
			System.out.println("student data is null!");
			return false;
		}

		try{
			String sql = String.format("insert into student (id, password, name)values ('%s','%s', '%s');", student.getId(), student.getPassword(), "xxx");
			this.stmt.executeUpdate(sql);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}


	}

	public Student getStudentById(String id){
		try{
			String sql = String.format("select * from student WHERE id = '%s';", id);

			ResultSet resultSet = this.stmt.executeQuery(sql);
		
			if(resultSet.next()){
				
					String rid = resultSet.getString("id");
					String password = resultSet.getString("password");
					String name = resultSet.getString("name");

					Student student = new Student();

					student.setId(rid);
					student.setPassword(password);
					student.setName(name);

					return student;				
			}
			else{
				System.out.println("con't find the id of student.");
				return null;
			}
		}
		catch(Exception e){
				e.printStackTrace();
				return null;
		}
	}

	public Student login(Student student){
		try{
			PreparedStatement pstmt = this.conn.prepareStatement("select * from student WHERE id = ? and password = ?");
			pstmt.setString(1, student.getId());
			pstmt.setString(2, student.getPassword());

			ResultSet resultSet = pstmt.executeQuery();
			if(resultSet.next()){
				
				String rid = resultSet.getString("id");
				String password = resultSet.getString("password");
				String name = resultSet.getString("name");

				

				student.setId(rid);
				student.setPassword(password);
				student.setName(name);

				return student;				
			}else{
				return null;
			}

		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}