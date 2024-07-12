package tw.idv.amber.service;

import tw.idv.amber.vo.User;

public interface UserService {
String signup (User user);
String signIn (String email, String password);
}
