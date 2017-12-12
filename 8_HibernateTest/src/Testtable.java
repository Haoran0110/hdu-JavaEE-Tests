import javax.persistence.*;  
  
@Entity  
@Table(name="testtable")  
public class Testtable {  
    private int id;  
    private String username;  
    private String number;  
    //表示主键与自动生成项  
    @Id  
    @GeneratedValue  
    public int getId() {  
        return id;  
    }  
    public void setId(int id) {  
        this.id = id;  
    }  
    @Column(name = "username")  
    public String getUsername() {  
        return username;  
    }  
    public void setUsername(String username) {  
        this.username = username;  
    }  
    @Column(name = "number")  
    public String getNumber() {  
        return number;  
    }  
    public void setNumber(String number) {  
        this.number = number;  
    }     
      
  
}  