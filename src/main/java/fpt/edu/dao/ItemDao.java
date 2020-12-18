package fpt.edu.dao;

import fpt.edu.context.ConnectDB;
import fpt.edu.entity.Item;
import fpt.edu.entity.ItemType;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ItemDao {
    public ArrayList<Item> getAll() {
        try {
            ArrayList<Item> arr = new ArrayList<>();
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Select * from Item";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                arr.add(new Item(
                        rs.getNString("id"),
                        rs.getNString("name"),
                        rs.getInt("price"),
                        rs.getNString("content"),
                        rs.getNString("img"),
                        rs.getNString("ItemType")
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

    public int insertItem(Item item){
        try {
            //Connect database
            ConnectDB db = ConnectDB.getInstance();
            Connection con = db.openConnection();
            String sql = "Insert into Item values (N'"+item.getId()+"',N'"+item.getName()+"',"+item.getPrice()+",N'"+item.getContent()
                    +"',N'"+item.getImg()+"',N'"+item.getItemType()+"')";
            Statement stmt = con.createStatement();
            int rowCount = stmt.executeUpdate(sql);
            stmt.close();
            con.close();
            System.out.println(rowCount);
            return rowCount;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return -1;
    }
}
