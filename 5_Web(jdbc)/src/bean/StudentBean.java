package bean;

public class StudentBean {
    private int id;
    private  String pwd;
    private  String place;
    private  String uid;
    private  String username;

    public void setStudentBean(int id,String pwd, String place, String uid, String username) {
        this.id = id;
        this.pwd = pwd;
        this.place = place;
        this.uid = uid;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
