package com.whr.servlet;  
  
import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

import com.whr.dao.UsersDao;
import com.whr.dao.impl.UsersDaoImpl;
import com.whr.entity.Users;  
  
public class ServletUsers extends HttpServlet {  
  
    private static final long serialVersionUID = 1L;  
  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        doPost(request, response);  
    }  
  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
        HttpSession session = request.getSession();  
        PrintWriter out = response.getWriter();  
  
        UsersDao ud = new UsersDaoImpl();  
  
        String dos = request.getParameter("do");  
        if (dos == null || dos.equals("")) {  
            dos = "index";  
        }  
        // 主页  
        if (dos.equals("index")) {  
            List<Users> ulist = ud.getAllUsers();  
            session.setAttribute("ulist", ulist);  
            response.sendRedirect("index.jsp");  
            return;  
        }  
        if (dos.equals("add")) {  
            String name = request.getParameter("name");  
            String sids = request.getParameter("sid");  
            int sid = Integer.parseInt(sids);  
            Users u = new Users(1, name, sid);  
            ud.addUser(u);  
            out.print("新增成功！");  
        }  
        
    }  
}  
