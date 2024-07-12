package tw.idv.amber.dao.impl;

import org.hibernate.annotations.processing.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.yaml.snakeyaml.events.Event;
import tw.idv.amber.dao.UseDao;
import tw.idv.amber.vo.User;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Repository //把class new成物件(託管)
public class UserDaoImpl implements UseDao { //主要修改區，可以建好幾個
    @Autowired //datasource已被託管
    private DataSource dataSource; // 連線設定:選定哪個資料庫

    @Override //子類別繼承父類別時，改寫父類別原有的方法內容
    public int insert(User user) {
        String sql = "INSERT INTO  `user`(`email`,`password`) values(?,?)"; //sql參數用"?"
        try (
                Connection connection = dataSource.getConnection(); //從datasource取得連線存在變數
                PreparedStatement statement = connection.prepareStatement(sql);//連線後打敘述
        ) {
            statement.setString(1, user.getEmail()); //填敘述，類型看原始SQL，1為1st數值
            statement.setString(2, user.getPassword());
            return statement.executeUpdate();//執行，返回值為整數

        } catch (Exception e) {
            e.printStackTrace(); //把錯誤訊息印在console
        }

        return -1;
    }

    @Override
    public User selectByEmail(String email) {
        String sql = "select * from user where email = ?";
        try (
                Connection connection = dataSource.getConnection(); //從datasource取得連線存在變數
                PreparedStatement statement = connection.prepareStatement(sql);//連線後打敘述
        ) {
            statement.setString(1, email); //把問號改成selectByEmail方法的參數
            try (ResultSet resultSet = statement.executeQuery()) { //resultset需關閉，表達多row多column的查詢結果集合，型態
//                executeQuery用於產生單個結果集(ResultSet)的語法，即SELECT語句
                if (resultSet.next()) {
                    User user = new User();
                    Integer id = resultSet.getInt("id");
                    user.setId(id);
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    return user;
                }

            }
//            return statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null; //因為user不是原生型態
    }

    @Override
    public User selectByEmailAndPassword(String email, String password) {
        String sql = "select * from user where email = ? and password = ?";
        try (
                Connection connection = dataSource.getConnection(); //從datasource取得連線存在變數
                PreparedStatement statement = connection.prepareStatement(sql);//連線後打敘述
        ) {
            statement.setString(1, email); //把問號改成select方法的參數
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) { //resultset表達多row多column的查詢結果集合 ，型態
                if (resultSet.next()) { //resultset需關閉
                    User user = new User();
                    Integer id = resultSet.getInt("id");
                    user.setId(id);
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    return user;
                }

            }

//            return statement.executeUpdate();//執行

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null; //因為user不是原生型態
    }

}
