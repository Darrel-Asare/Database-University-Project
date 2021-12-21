// Darrel Asare
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCRegistrar {
    public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/academic_records","registrar","Registrar@");

            Statement stmt=con.createStatement();
            // Execute SQL Query
        /*    String sql = "insert into students"
                        + " (StudentID, FirstName, LastName, Email, DateOfBirth, " +
                    "Address, City, MobilePhone, Course_Enroll_ID, StartDate, EndDate)"
                 +  " values ('127', 'Brock', 'Rain', 'brock@mail.com', '1998-02-26', " +
                    "'1565 FD', 'Harrow', '519-738-5371', '3506', '2021-09-08', '2021-12-17')"; */

            // Execute SQL Query
            String sql = "update students "
                    + " set Email = 'brock@gmail.com'"
                   +  " where StudentID = 127";

            stmt.executeUpdate(sql);
                 //   System.out.println("Insert complete");
            System.out.println("Update complete");
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
