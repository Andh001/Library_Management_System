package lib;
import java.sql.ResultSet;
import lib.*;

public class User {
   // private String username=null, password=null, phone_no=null, email=null, address=null, name=null;
    private String username, password, phone_no, email, address, name, id;
    private static String tableName = "USER_DETAILS";
    
    public static boolean register(User user) throws Exception
    {
        Executor.exnr("INSERT INTO "+tableName+"(name,phone_no,address,email_id,username,password) VALUES ('"+ user.name +"','"+ user.phone_no +"','"+ user.address +"','"+ user.email +"','"+ user.username +"','"+ user.password+ "')");
        Executor.exnr("commit");
        ResultSet rs =Executor.exer("SELECT * FROM "+tableName+" WHERE USERNAME='"+user.username+"' AND PASSWORD='"+user.password+"'");
        
        if(rs.next())
        {
            user.load();
            return true;
        }
        else
            return false;
    }
    
    public void load() throws Exception
    {
        ResultSet rrs = Executor.exer("SELECT * FROM "+tableName+" WHERE USERNAME='"+this.username+"' AND PASSWORD='"+this.password+"'");
        while(rrs.next()){
        this.id = rrs.getString("ID");
        this.address = rrs.getString("ADDRESS");
        this.email = rrs.getString("EMAIL_ID");
        this.name = rrs.getString("NAME");
        this.phone_no = rrs.getString("PHONE_NO");
        }
    }
    
    public void loadDetails() throws Exception
    {
        ResultSet rrs = Executor.exer("SELECT * FROM "+tableName+" WHERE ID='"+this.id+"'");
        while(rrs.next()){
        this.username = rrs.getString("USERNAME");
        this.address = rrs.getString("ADDRESS");
        this.email = rrs.getString("EMAIL_ID");
        this.name = rrs.getString("NAME");
        this.phone_no = rrs.getString("PHONE_NO");
        }
    }
    
    public static boolean check(String username, String password) throws Exception
    {
        ResultSet rs = Executor.exer("SELECT * FROM "+tableName+" WHERE USERNAME='"+username+"' AND PASSWORD='"+password+"'");
        if(rs.next())
            return true;
        else
            return false;
    }
    
    public String whois() throws Exception
    {
        ResultSet rs = Executor.exer("SELECT * FROM "+tableName+" WHERE LOWER(USERNAME)=LOWER('"+this.username+"') AND PASSWORD='"+this.password+"'");
        if(rs.next())
            return "user";
        else
        {
            ResultSet rs1 = Executor.exer("SELECT * FROM ADMIN WHERE LOWER(USERNAME)=LOWER('"+this.username+"') AND PASSWORD='"+this.password+"'");
            return "admin";
        }
    }
    
    public boolean isExist() throws Exception
    {
        ResultSet rs = Executor.exer("SELECT * FROM "+tableName+" WHERE LOWER(USERNAME)=LOWER('"+this.username+"') AND PASSWORD='"+this.password+"'");
        if(rs.next())
            return true;
        else
        {
            ResultSet rs1 = Executor.exer("SELECT * FROM ADMIN WHERE LOWER(USERNAME)=LOWER('"+this.username+"') AND PASSWORD='"+this.password+"'");
            if(rs1.next())
                return true;
            else
                return false;
        }
    }
    
    public boolean verify() throws Exception
    {
        ResultSet rs = Executor.exer("SELECT * FROM "+tableName+" WHERE LOWER(USERNAME)=LOWER('"+this.username+"') AND PASSWORD='"+this.password+"'");
        if(rs.next())
            return true;
        else
            return false;
    }
    
    /*public static void login(User user) throws Exception
    {
        ResultSet rs = Executor.exer("SELECT * FROM "+tableName+" WHERE USERNAME='"+user.username+"' AND PASSWORD='"+user.password+"'");
        if(rs.next())
        {
            
        }
            //return true;
        else
            //return false;
    }
    */
    
    public String getId()
    {
        return this.id;
    }
    
    public void setId(String id)
    {
        this.id=id;
    }
    
    public String getUsername()
    {
        return this.username;
    }
    
    public String getPassword()
    {
        return this.password;
    }
    
    public void setUsername(String newUsername)
    {
        this.username = newUsername;
    }
    
    public void setPassword(String newPassword)
    {
        this.password = newPassword;
    }
    
    public String getPhone_no()
    { 
        return this.phone_no;
    }
    
    public String getEmail()
    { 
        return this.email;
    }
    
    public String getAddress()
    { 
        return this.address;
    }
    
    public String getName()
    { 
        return this.name;
    }
    
    public void setPhone_no(String newphone_no)
    {
        this.phone_no = newphone_no;
    }
    
    public void setEmail(String newemail)
    {
        this.email = newemail;
    }
    
    public void setAddress(String newaddress)
    {
        this.address = newaddress;
    }
    
    public void setName(String newname)
    {
        this.name = newname;
    }
    
}
