package fpt.edu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fpt.edu.context.ConnectDB;
import fpt.edu.entity.Information;
import fpt.edu.entity.Users;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

public class UserDao {
    public Users getUserByUserName(String UserName) {
        Users user = null;
        try {
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from Users where username='"+UserName+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                user = new Users(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password")
                );
            }
            rs.close();
            stmt.close();
            con.close();
            return user;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }


}
