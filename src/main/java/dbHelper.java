

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class dbHelper {
        String from;
        String to;
        String date;
        ArrayList<String> trainNames ;

        ArrayList<String> deptTimes ;
        ArrayList<String> arrTimes;
        ArrayList<Integer>travel_Duration;

    public dbHelper(String from,String to,String date) throws SQLException, NamingException, ParseException {
            this.from=from;
            this.to=to;
            this.date=date;
            this.trainNames = getTrain(from,to);
    }
   /* public ArrayList<String> getDeptTimes(ArrayList<String> trainNames ){
        ArrayList<String> outcome =new ArrayList<String>();
        try {
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/DistDB");
            try {
                Connection conn = ds.getConnection();
                Statement mystm = conn.createStatement();
                for(String trainName : trainNames) {
                    String sql = "select departure_time from train where name=\'"+trainName+"\'";
                    ResultSet rs = mystm.executeQuery(sql);
                    outcome.add(rs.getString(0));

                }
                while(rs.next()){
                    outcome.add(rs.getString("train_name"));
                    // System.out.println(rs.getString(1));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (NamingException e) {
            e.printStackTrace();
        }

        return outcome;
    }*/


    public ArrayList<String> getTrain(String from, String to) throws NamingException, SQLException, ParseException {
        ArrayList<String> outcome =new ArrayList<String>();
        ArrayList<String> outcome2 =new ArrayList<String>();
        ArrayList<String> outcome3 =new ArrayList<String>();
        ArrayList<Integer> outcome4=new ArrayList<Integer>();

            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/DistDB");

                Connection conn = ds.getConnection();
                Statement mystm = conn.createStatement();
                String sql ="select t1.train_name, t3.departure_time,t1.cost_time,t2.cost_time\n" +
                        "from schedule t1, schedule t2,train t3\n" +
                        "where t1.station_name =\'"+from +
                        "\' and t2.station_name = \'"+to +
                        "\' and t1.train_name = t2.train_name\n" +
                        " and t1.cost_time < t2.cost_time and t1.train_name = t3.name";
                ResultSet rs = mystm.executeQuery(sql);
                while(rs.next()){
                    int i = rs.getInt(3);
                    int j = rs.getInt(4);
                    outcome4.add(j-i);
                    String myTime = rs.getString("departure_time");
                    SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
                    Date d = df.parse(myTime);
                    Calendar cal = Calendar.getInstance();
                    cal.setTime(d);
                    cal.add(Calendar.HOUR, i);
                    String newTime = df.format(cal.getTime());
                    outcome2.add(newTime);
                    cal.add(Calendar.HOUR, j-i);
                    newTime = df.format(cal.getTime());
                    outcome3.add(newTime);
                    outcome.add(rs.getString("train_name"));
                }

                    deptTimes=outcome2;
                    arrTimes=outcome3;
                    travel_Duration=outcome4;



        return outcome;
    }

}
