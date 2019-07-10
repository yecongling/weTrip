package com.foo.wetrip.service.impl;

import com.foo.wetrip.util.YunpianConf;
import com.yunpian.sdk.YunpianClient;
import com.yunpian.sdk.model.Result;
import com.yunpian.sdk.model.SmsSingleSend;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class SendYunServiceImpl {
    public void sendPhoneAndContent(String linkPhone, String content) {
        //初始化clnt,使用单例方式
        YunpianClient clnt = new YunpianClient(YunpianConf.YP_APIKEY).init();
        //发送短信API
        Map<String, String> param = clnt.newParam(2);
        param.put(YunpianClient.MOBILE, linkPhone);
        param.put(YunpianClient.TEXT, "亲爱的用户" + content + "，祝您生活愉快！");
        Result<SmsSingleSend> r = clnt.sms().single_send(param);
        //获取返回结果，返回码:r.getCode(),返回码描述:r.getMsg(),API结果:r.getData(),其他说明:r.getDetail(),调用异常:r.getThrowable()

        //账户:clnt.user().* 签名:clnt.sign().* 模版:clnt.tpl().* 短信:clnt.sms().* 语音:clnt.voice().* 流量:clnt.flow().* 隐私通话:clnt.call().*

        //释放clnt
        clnt.close();
    }
}
