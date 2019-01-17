
package myPackage;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import com.mashape.unirest.request.HttpRequestWithBody;
import com.mashape.unirest.request.body.RequestBodyEntity;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import myPackage.ParseForm;

public class Outlook {
    private String access_token;

    public Outlook(String token) {
        this.access_token = token;
    }

    public void CreateCalendarEvent(String text) throws UnirestException, FileNotFoundException {
        ParseForm pf = new ParseForm(text);
        String body = "{\"Subject\":\"" + pf.getSubject() + "\"," + "\"Body\": {" + "\"ContentType\": \"HTML\"," + "\"Content\":" + "\"" + pf.getMessage() + "\"" + "}," + "\"Start\": {" + "\"DateTime\":" + "\"" + pf.reformatDate() + pf.getStartTime() + "\"," + "\"TimeZone\": \"Pacific Standard Time\"" + "}," + "\"End\": {" + "\"DateTime\":" + "\"" + pf.reformatDate() + pf.getEndTime() + "\"," + "\"TimeZone\": \"Pacific Standard Time\"" + "}," + "\"Attendees\": [" + "{" + "\"EmailAddress\": {" + "\"Address\": \"TestAcc@eastsidecatholic.org\"" + "}," + "\"Type\": \"Required\"" + "}," + "{" + "\"EmailAddress\": {" + "\"Address\":" + "\"" + pf.getTeacherEmail() + "\"" + "}," + "\"Type\": \"Required\"" + "}" + "]" + "}";
        System.out.println(body);
        HttpResponse StringResponse = Unirest.post((String)"https://outlook.office.com/api/v2.0/me/events").header("Accept", "text/*, application/xml, application/json; odata.metadata=none").header("Authorization", "Bearer " + this.access_token).header("Content-Type", "application/json; charset=utf-8").body(body).asString();
        System.out.println(StringResponse.getStatusText());
    }
}
