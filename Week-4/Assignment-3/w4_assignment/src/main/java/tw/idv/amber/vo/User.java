package tw.idv.amber.vo; //.vo裝資料

public class User { //建立裝資料的類別，用來放table資料

    private Integer id; //放資料不能是原生型態int，改成integer
    private String email;
    private String password;

    // 无参构造函数
    public User() {
    }

    // 带参构造函数
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    // Getter 和 Setter 方法
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // toString 方法（可选，用于打印对象信息）
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}

