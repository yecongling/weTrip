import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @Author: Wonderland
 * @Date: 2019/2/27 10:09
 * @Description: PACKAGE_NAME
 * weTrip
 */
public class MdPassword {

    /**
     * MD5加密算法
     * @param password 原密码
     * @return 加密过后的密码
     */
    public String newPassword(String password) throws NoSuchAlgorithmException {

        // 敲成字节
        byte[] bytes = password.getBytes();
        // 通过MD5加密算法进行加密处理,得到新的字节码序列
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        bytes = messageDigest.digest();
        String newpassword = "";
        for (byte b : bytes) {
            newpassword += String.format("%2x",b);
        }
        return newpassword;
    }
}
