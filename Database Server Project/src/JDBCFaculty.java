// Darrel Asare

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCFaculty {
    public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/academic_records","faculty","Faculty@");

            Statement stmt=con.createStatement();
            // Execute SQL Query
            ResultSet rs=stmt.executeQuery("select * from course_list limit 1");
            while(rs.next())
                System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "
                        +rs.getString(3)+"  " +rs.getInt(4)+"  "
                        +rs.getString(5)+"  " +rs.getString(6)+"  "
                        +rs.getString(7));
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
