package fpt.edu.context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author LONG
 */
public class ConnectDB {

    private static ConnectDB instance;

    public Connection openConnection() throws Exception{
        String connectionUrl ="jdbc:sqlserver://LONG:1433;"+
                "databaseName=CoffeeShop;User=sa;Password=tv1502;";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection(connectionUrl);
        return con;
    }

    //Get instance of dbms only one time
    public static ConnectDB getInstance(){
        if(instance==null) instance = new ConnectDB();
        System.out.println("Open connection successfully");
        return instance;
    }
}
