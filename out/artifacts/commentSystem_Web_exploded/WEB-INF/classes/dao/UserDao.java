package dao;

import domain.Post;
import domain.User;

import java.util.List;

public interface UserDao {
    //��¼����
    public Integer login(User user);
    //ע�Ṧ��
    void register(User user);
    //�ύ����
    void post(Post post);
    //������е�����
    List<Post> findAllPost();
}
