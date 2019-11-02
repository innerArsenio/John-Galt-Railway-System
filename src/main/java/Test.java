import com.mysql.jdbc.Statement;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;
import java.util.Scanner;

public class Test {
    private static Connection connection;

    public static void importSQL(Connection conn, InputStream in) throws SQLException {
        Scanner s = new Scanner(in);
        s.useDelimiter("(;(\r)?\n)|(--\n)");
        Statement st = null;
        try {
            st = (Statement) conn.createStatement();
            while (s.hasNext()) {
                String line = s.next();
                if (line.startsWith("/*!") && line.endsWith("*/")) {
                    int i = line.indexOf(' ');
                    line = line.substring(i + 1, line.length() - " */".length());
                }

                if (line.trim().length() > 0) {
                    st.execute(line);
                }
            }
        } finally {
            if (st != null) st.close();
        }
    }

    public static void main(String [ ] args) throws SQLException {


        String url = "jdbc:mysql://localhost:3306/railway_system?" + "allowPublicKeyRetrieval=true&useSSL=false";
        //String url = "jdbc:mysql://localhost:3306/javabase?" + "allowPublicKeyRetrieval=true&useSSL=false";
        String username = "root";
        String password = "Keno2005";

        System.out.println("Connecting database...");
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            System.out.println("Database connected!");

            File initialFile = new File("C:\\Users\\kenes\\Downloads\\Fall 2019 LESSONS\\Software Eng. Labs\\John-Galt-Railway-System\\src\\main\\java\\project.sql");
            //File initialFile = new File("C:\\Users\\kenes\\Downloads\\Fall 2019 LESSONS\\Software Eng. Labs\\John-Galt-Railway-System\\src\\main\\java\\test.sql");
            try{
                InputStream targetStream = new FileInputStream(initialFile);
                importSQL(connection, targetStream);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new IllegalStateException("Cannot connect the database!", e);
        }
        /*Statement st = (Statement) connection.createStatement();
        ResultSet res = st.executeQuery("select t1.train_name, t1.schedule_id\n" +
                "from schedule t1, schedule t2\n" +
                "where t1.station_name = 'Petropavlovsk'\n" +
                " and t2.station_name = 'Omsk(RU)'\n" +
                " and t1.train_name = t2.train_name\n" +
                " and t1.cost_time < t2.cost_time");

        while (res.next()) {
            System.out.println(res.getString(2));
        }
*/

    }
}
