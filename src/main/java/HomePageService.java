
import com.google.gson.Gson;

import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;
import java.sql.*;
import java.text.ParseException;


@Path("/index")
public class HomePageService {
    @GET
    public Response getMyList(@QueryParam("from") String from, @QueryParam("to") String to,@QueryParam("date") String date){

        /*
            for(String person : outcome){

                o = o+"$"+person;
            }
         */
        dbHelper db = null;
        try {
            try {
                db = new dbHelper(from,to,date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        String json =gson.toJson(db,dbHelper.class);
        return Response.ok(json).build();

    }
}
