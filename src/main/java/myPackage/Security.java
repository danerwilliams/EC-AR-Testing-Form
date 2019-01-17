
package myPackage;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import com.mashape.unirest.request.HttpRequestWithBody;
import com.mashape.unirest.request.body.MultipartBody;
import java.io.PrintStream;
import java.util.Scanner;
import java.util.regex.Pattern;

public class Security {
    private static final String client_id = "********-****-****-****-************";
    private static final String redirect_uri = "https://www.sample-env.wc6vfsvews.us-west-2.elasticbeanstalk.com/authorize.jsp";//"https://www.sample-env.wc6vfsvews.us-west-2.elasticbeanstalk.com/authorize.jsp";
    private static final String response_type = "code";
    private static final String scope = "https://outlook.office.com/mail.send%20https://outlook.office.com/calendars.readwrite";
    private static final String client_secret = "***********************";

    public String generateLogonUrl() {
        return String.format("https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=%s&redirect_uri=%s&response_type=%s&scope=%s", 
        		client_id, 
        		redirect_uri, 
        		response_type, 
        		scope);
    }

    public String retrieveAccessToken(String auth_code) throws UnirestException {
        HttpResponse StringResponse = Unirest.post((String)"https://login.microsoftonline.com/common/oauth2/v2.0/token")
        		.header("accept", "application/x-www-form-urlencoded")
        		.field("grant_type", 
        				(Object)"authorization_code")
        		.field("code", auth_code)
        		.field("redirect_uri", redirect_uri)
        		.field("client_id",  client_id)
        		.field("client_secret", client_secret).asString();
        String body = (String)StringResponse.getBody();
        System.out.println(body);
        String str = "";
        Scanner sc = new Scanner(body).useDelimiter(",");
        System.out.println(sc.delimiter());
        while (sc.hasNext()) {
            str = sc.next();
        }
        System.out.println(str);
        String access_token = "";
        Scanner sc1 = new Scanner(str).useDelimiter(":");
        access_token = sc1.next();
        access_token = sc1.next();
        System.out.println(access_token);
        access_token = access_token.substring(1, access_token.length() - 2);
        return access_token;
    }
    
}
