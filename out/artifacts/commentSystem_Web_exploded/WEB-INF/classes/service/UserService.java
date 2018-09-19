package service;

import domain.Post;
import domain.User;

import java.util.List;

public interface UserService {
    //登录功能
    boolean login(User user);
    //注册功能
    public void register(User user);
    //提交帖子
    void post(Post post);

    List<Post> findAllPost();
}
