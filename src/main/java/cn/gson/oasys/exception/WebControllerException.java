package cn.gson.oasys.exception;

/**
 * @创建时间 2022/4/14  18:02
 * @描述
 */

import org.hibernate.service.spi.ServiceException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;


@ControllerAdvice
public class WebControllerException {
    /**
     * 全局异常捕捉处理
     * @param ex
     * @return
     */
    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public void errorHandler(Exception ex) {
        System.out.println("全局异常处理："+ex.getMessage());
    }

    @ResponseBody
    @ExceptionHandler(value = ServiceException.class)
    public void errorHandler(ServiceException ex) {
        System.out.println("业务异常处理："+ex.getMessage());
    }


}
