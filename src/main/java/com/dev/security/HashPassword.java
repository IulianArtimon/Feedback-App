package com.dev.security;

import org.mindrot.jbcrypt.BCrypt;

/**
 * Created by aiciulian on 19-Oct-16.
 *
 *
 *      Implementare a BCrypt pentru hash parole
 *
 *
 */

public class HashPassword {


// Password Hashing

    public static String createPassword(String parola)  {
        if (parola == null) {
            return "Parola gresita";
        }

        String hash = BCrypt.gensalt(15);
        String parolaHash= BCrypt.hashpw(parola,hash );
        return parolaHash;


    }

// Password Decrypting

    public static boolean checkPassword(String parola, String Parola) {

            return BCrypt.checkpw(parola , Parola);
    }

}
