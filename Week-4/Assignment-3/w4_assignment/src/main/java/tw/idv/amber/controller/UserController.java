package tw.idv.amber.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tw.idv.amber.dao.UseDao;
import tw.idv.amber.service.UserService;
import tw.idv.amber.vo.User;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@Controller
public class UserController {
    @Autowired //把託管的物件拿來用(注入)
    private UserService userService; //會拿到impl

    @PostMapping("signup")
    public String signup(
            @RequestParam String email,
            @RequestParam String password
    ) {
        User user = new User(); //類別new成物件
        user.setEmail(email); //放入物件
        user.setPassword(password); //放入物件
        String errMsg = userService.signup(user); //把user送到service層
        return getUrl(errMsg);
    }

    @PostMapping("signIn")
    public String signIn(
            @RequestParam String email,
            @RequestParam String password
    ) {
//        User user = new User(); //沒用購物袋了
//        user.setEmail(email); //
//        user.setPassword(password);

        String errMsg = userService.signIn(email, password); //把user送到service層
        return getUrl(errMsg);
    }

    private String getUrl(String errMsg) {
        String url = "redirect:";
        if (errMsg != null) {
            url += "home.html?errMsg=" + URLEncoder.encode(errMsg, StandardCharsets.UTF_8);
        } else {
            url += "member.html";
        }
        return url;
    }
}

