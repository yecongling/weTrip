package com.foo.wetrip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 17:57
 * @Description: com.foo.wetrip.controller
 * weTrip
 */
@Controller
public class PictureController {
    @RequestMapping("/picture-show")
    public String showPic() {
        return "/back/picture-show";
    }


}