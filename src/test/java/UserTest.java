import com.foo.wetrip.dao.CityMapper;
import com.foo.wetrip.dao.UsersMapper;
import com.foo.wetrip.service.SendService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.security.NoSuchAlgorithmException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml"})
public class UserTest {
    @Autowired
    UsersMapper usersMapper;

    @Autowired
    SendService sendService;

    @Autowired
    CityMapper cityMapper;
    @Test
    public void test01(){
        System.out.println(usersMapper.selectByPhoneNum("15760011822"));
    }

    @Test
    public void test02(){
        System.out.println(sendService.selectPhone("15760011822"));
    }

    @Test
    public void test03(){
        System.out.println(cityMapper.selectByPrimaryKey(1));
    }





    @Test
    public void testMD5(){
        String password = "123456";
        // 加密处理
        MdPassword mdPassword = new MdPassword();
        String newpassword = "";
        try {
            newpassword = mdPassword.newPassword(password);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        System.out.println(newpassword);
    }
}
