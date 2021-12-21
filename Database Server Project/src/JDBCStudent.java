// Darrel Asare
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCStudent {
    public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/academic_records","student","Student@");

            Statement stmt=con.createStatement();
            // Execute SQL Query
            ResultSet rs=stmt.executeQuery("select * from academic_summary limit 1");
            while(rs.next())
                System.out.println(rs.getInt(1)+"  "+rs.getInt(2)+"  "
                        +rs.getInt(3)+"  " +rs.getInt(4)+"  "
                        +rs.getInt(5)+"  " +rs.getString(6)+"  "
                        +rs.getString(7));
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
