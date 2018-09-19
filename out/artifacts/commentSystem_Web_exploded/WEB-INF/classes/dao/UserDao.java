package dao;

import domain.Post;
import domain.User;

import java.util.List;

public interface UserDao {
    //登录功能
    public Integer login(User user);
    //注册功能
    void register(User user);
    //提交帖子
    void post(Post post);
    //获得所有的贴子
    List<Post> findAllPost();
}
