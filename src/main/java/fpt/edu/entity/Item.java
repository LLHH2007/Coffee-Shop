package fpt.edu.entity;

public class Item {
    private String id,name,content,img,ItemType;
    private int price;

    public Item() {
    }

    public Item(String id, String name,int price, String content, String img, String itemType) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.img = img;
        ItemType = itemType;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getItemType() {
        return ItemType;
    }

    public void setItemType(String itemType) {
        ItemType = itemType;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
