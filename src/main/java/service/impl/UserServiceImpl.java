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
    //ע��
    @Override
    public void register(User user){
        userDao.register(user);
    }

    //�ύ����
    @Override
    public void post(Post post) {
        userDao.post(post);
    }

    //������е�����
    @Override
    public List<Post> findAllPost() {
        List<Post> postList=userDao.findAllPost();
        return postList;
    }
}
