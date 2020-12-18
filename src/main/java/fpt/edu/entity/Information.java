package fpt.edu.entity;

public class Information {
    private String id,title,highlights,content;

    public Information() {
    }

    public Information(String id, String title, String highlights, String content) {
        this.id = id;
        this.title = title;
        this.highlights = highlights;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHighlights() {
        return highlights;
    }

    public void setHighlights(String highlights) {
        this.highlights = highlights;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
