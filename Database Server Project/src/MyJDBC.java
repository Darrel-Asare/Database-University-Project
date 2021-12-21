// Darrel Asare
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyJDBC {
    public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/academic_records","root","RootAdmin@");
//here academic_records is database name, root is the username and Decagypysu@9k is the password
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from academic_staff");
            while(rs.next())
                System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "
                        +rs.getString(3)+"  " +rs.getString(4)+"  "
                        +rs.getDate(5)+"  " +rs.getDate(6)+"  "
                        +rs.getString(7)+"  " +rs.getString(8)+"  "
                        +rs.getString(9)+"  " +rs.getDate(10)+"  "
                        +rs.getString(11)+"  " +rs.getString(12)+"  "
                        +rs.getString(13));
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
