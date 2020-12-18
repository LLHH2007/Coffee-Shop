package fpt.edu.entity;

public class ItemType {
    private String id,name,img,content;

    public ItemType() {
    }

    public ItemType(String id, String name, String img, String content) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.content = content;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
