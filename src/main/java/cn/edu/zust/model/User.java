package cn.edu.zust.model;

/**
 * Created by King on 2016/9/19 0019.
 */
public class User {
    private Integer id;
    private String username;
    private String password;
    private String nickname;
    private Short type;
    private String intro;
    private String dpPath;
    private UserInfo info;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Short getType() {
        return type;
    }

    public void setType(Short type) {
        this.type = type;
    }

    public UserInfo getInfo() {
        return info;
    }

    public String getIntro() {
        return intro;
    }

    public String getDpPath() {
        return dpPath;
    }

    public void setDpPath(String dpPath) {
        this.dpPath = dpPath;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public void setInfo(UserInfo info) {
        this.info = info;
    }
}
