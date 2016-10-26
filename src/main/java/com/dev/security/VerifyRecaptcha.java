package com.dev.security;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.net.ssl.HttpsURLConnection;
import java.io.*;
import java.net.URL;


/**
 * Created by aiciulian on 19-Oct-16.
 *
 *
 *      Implementare a Google reChaptcha pentru validare user input
 *
 *
 */

public class VerifyRecaptcha {

    public static final String url = "https://www.google.com/recaptcha/api/siteverify";
    public static final String secret = "6LfkqQkUAAAAAPfRVMxyrT2dlKcfYczf2001-S86";


    public static boolean verify(String gRecaptchaResponse) throws IOException {
        if (gRecaptchaResponse == null || "".equals(gRecaptchaResponse)) {
            return false;
        }

        try{
            URL obj = new URL(url);
            HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

// Adauga info in request header

            con.setRequestMethod("POST");
            con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
            String postParams = "secret=" + secret + "&response="
                    + gRecaptchaResponse;

// Trimite un request de tip Post

            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();

            int responseCode = con.getResponseCode();
            System.out.println("\nSending 'POST' request to URL : " + url);
            System.out.println("Post parameters : " + postParams);
            System.out.println("Response Code : " + responseCode);

            BufferedReader in = new BufferedReader(new InputStreamReader(
                    con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();

            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

// Afiseaza rezultate pt debug

            System.out.println(response.toString());

// Prelucreaza datele primite sub forma de JSON

            JsonReader jsonReader = Json.createReader(new StringReader(response.toString()));
            JsonObject jsonObject = jsonReader.readObject();
            jsonReader.close();

            return jsonObject.getBoolean("success");
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}

