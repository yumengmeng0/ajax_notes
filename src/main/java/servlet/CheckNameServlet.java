package servlet;

import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

/**
 * @author: ymm
 * @date: 2022/7/17
 * @version: 1.0.0
 * @description:
 */
@WebServlet("/checkName")
public class CheckNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");

        System.out.println("username = " + username);
        HashMap<String, Object> map = new HashMap<>();


        if ("tom".equals(username)) {
            map.put("flag", true);
            map.put("msg", "用户名已被占用！");
        } else {
            map.put("flag", false);
            map.put("msg", "用户名可以使用");
        }

        String result = JSON.toJSONString(map);
        System.out.println("result = " + result);
        response.getWriter().print(result);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
