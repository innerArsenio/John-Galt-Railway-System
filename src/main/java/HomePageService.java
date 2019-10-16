import com.google.gson.Gson;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

@Path("/index")
public class HomePageService {
    @GET
    public Response getMyList(@QueryParam("from") String from, @QueryParam("to") String to,@QueryParam("date") String date) {
        //Gson gson = new Gson();
        String outcome= from+to+date;



        //json = gson.toJson();

        return Response.ok(outcome).build();
    }
}
