package fpt.edu.dao;

import fpt.edu.context.ConnectDB;
import fpt.edu.entity.Information;
import fpt.edu.entity.ItemType;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ItemTypeDao {
    public ArrayList<ItemType> getAll() {
        try {
            ArrayList<ItemType> arr = new ArrayList<>();
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from ItemType";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                 arr.add(new ItemType(
                        rs.getNString("id"),
                        rs.getNString("name"),
                        rs.getNString("img"),
                        rs.getNString("content")
                ));
            }
            rs.close();
            stmt.close();
            con.close();
            return arr;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }

    public ItemType getByName(String name) {
        try {
            ItemType itemType = null;
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from ItemType where name ='"+name+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                itemType = new ItemType(
                        rs.getNString("id"),
                        rs.getNString("name"),
                        rs.getNString("img"),
                        rs.getNString("content")
                );
            }
            rs.close();
            stmt.close();
            con.close();
            return itemType;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }
}
