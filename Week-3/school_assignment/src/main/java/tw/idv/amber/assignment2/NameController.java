package tw.idv.amber.assignment2;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller //會跳頁
public class NameController {
    @GetMapping("myName")
    public Object myName(@CookieValue(required = false) String name){
        if (name==null || name.isEmpty()){
        return "track.html";
    }else{
        return ResponseEntity.ok(name);
        }
    }

    @GetMapping("trackName")
    public String trackName(@RequestParam String name, HttpServletResponse response){
        Cookie cookie = new Cookie("name",name);
        response.addCookie(cookie);
        return "redirect:myName";
    }
}
