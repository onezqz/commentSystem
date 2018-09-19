package service;

import domain.Post;
import domain.User;

import java.util.List;

public interface UserService {
    //��¼����
    boolean login(User user);
    //ע�Ṧ��
    public void register(User user);
    //�ύ����
    void post(Post post);

    List<Post> findAllPost();
}
