package fpt.edu.dao;

import fpt.edu.context.ConnectDB;
import fpt.edu.entity.Information;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class InformationDAO {
    public Information getHome() {
        Information home = null;
        try {
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from Information where id='home'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                home = new Information(
                        rs.getNString("id"),
                        rs.getNString("title"),
                        rs.getNString("highlights"),
                        rs.getNString("content")
                );
            }
            rs.close();
            stmt.close();
            con.close();
            return home;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }

    public Information getMenu() {
        Information menu = null;
        try {
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from Information where id='menu'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                menu = new Information(
                        rs.getNString("id"),
                        rs.getNString("title"),
                        rs.getNString("highlights"),
                        rs.getNString("content")
                );
            }
            rs.close();
            stmt.close();
            con.close();
            return menu;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }
}
