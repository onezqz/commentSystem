package service.impl;

import dao.UserDao;
import domain.Post;
import domain.User;
import service.UserService;

import javax.annotation.Resource;
import java.util.List;

public class UserServiceImpl implements UserService {

    @Resource(name = "userDao")
    private UserDao userDao;
    @Override
    public boolean login(User user) {
        Integer isExit = userDao.login(user);
        if(isExit>0){
            return true;
        }else{
            return false;
        }
    }
    //注册
    @Override
    public void register(User user){
        userDao.register(user);
    }

    //提交帖子
    @Override
    public void post(Post post) {
        userDao.post(post);
    }

    //获得所有的帖子
    @Override
    public List<Post> findAllPost() {
        List<Post> postList=userDao.findAllPost();
        return postList;
    }
}
