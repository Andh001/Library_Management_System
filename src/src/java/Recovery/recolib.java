/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Recovery;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.concurrent.ThreadLocalRandom;
import lib.Executor;

/**
 *
 * @author MAHARAJ
 */
public class recolib  {
    public static long generateRandomNumber(int n) {
    long min = (long) Math.pow(10, n - 1);
    return ThreadLocalRandom.current().nextLong(min, min * 10);
    }
    
    public static boolean checkKey(String key,String Email) throws Exception
    {
        ResultSet rs = Executor.exer("SELECT KEY FROM USER_DETAILS WHERE EMAIL_ID='"+Email+"'");
        String key_database = rs.getString("KEY");
        if(key.matches(key_database))
            return true;
        else
            return false;
    }
    
    public static boolean newPass(String newPassword, String email)throws Exception
    {
        Executor.exnr("UPDATE TABLE USER_DETAILS SET PASSWORD='"+newPassword+"' WHERE EMAIL_ID='"+email+"'");
        ResultSet rs = Executor.exer("SELECT USERNAME FROM USER_DETAILS WHERE EMAIL_ID='"+email+"' AND PASSWORD='"+newPassword+"'");
        if(rs.isBeforeFirst())
            return true;
        else
            return false;
    }
    
    public static String loadUser(String Email)throws Exception
    {
        ResultSet rs = Executor.exer("SELECT ID,NAME,USERNAME FROM USER_DETAILS WHERE USER_DETAILS.EMAIL_ID='"+Email+"'");

        String username=null;
        while(rs.next()){
            username= rs.getString("USERNAME");
        }
        return username;
    }
    
    public static String loadKey(String Email)throws Exception
    {
        ResultSet rs = Executor.exer("SELECT ID,KEY FROM USER_DETAILS WHERE USER_DETAILS.EMAIL_ID='"+Email+"'");
        String key=null;
        rs.next();
        //rs.beforeFirst();
        key=rs.getString("KEY");
        return key;
    }
}

