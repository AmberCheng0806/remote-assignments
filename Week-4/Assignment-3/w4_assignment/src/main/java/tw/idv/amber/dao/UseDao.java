package tw.idv.amber.dao;

import tw.idv.amber.vo.User;

public interface UseDao { //介面同一個，抽象化，只下令不操作細節
int insert (User user);
User selectByEmail(String email);//select * from user where email =?(把裝資料的user有的都回傳)
User selectByEmailAndPassword(String email,String password);
}
