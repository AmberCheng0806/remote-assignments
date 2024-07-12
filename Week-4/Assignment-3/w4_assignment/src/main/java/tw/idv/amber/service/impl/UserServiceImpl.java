package tw.idv.amber.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tw.idv.amber.dao.UseDao;
import tw.idv.amber.service.UserService;
import tw.idv.amber.vo.User;

@Service // 要注入本人(類別)也要託管成物件，作用跟repository同
public class UserServiceImpl implements UserService {
    @Autowired
    private UseDao useDao;


    @Override
    public String signup(User user) {
        String email = user.getEmail();
        if (email == null || email.isEmpty()) {
            return "帳號必須輸入";
        }
        String password = user.getPassword();
        if (password == null || password.isEmpty()) {
            return "密碼必須輸入";
        }
        if (useDao.selectByEmail(email) != null) {
            return "此帳號已被註冊";
        }
        int result = useDao.insert(user);
        return result == 1? null:"系統錯誤";
    }

    @Override
    public String signIn(String email, String password) {
        if (email == null || email.isEmpty()) {
            return "帳號必須輸入";
        }
        if (password == null || password.isEmpty()) {
            return "密碼必須輸入";
        }

        User user = useDao.selectByEmailAndPassword(email,password);
        return user != null? null:"帳號或密碼錯誤"; //null有在dao定義
    }

}
