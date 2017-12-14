package practice.web;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import practice.domain.BranchMaster;
import practice.service.BranchMasterService;

@Controller
@RequestMapping("/auth")
public class AuthControl {
  @Autowired BranchMasterService branchMasterService;
  
  @RequestMapping("form")
  public void form() {}
  
  @RequestMapping("login")
  public String login(HttpServletRequest req, HttpServletResponse resp) throws Exception {
    String userType = req.getParameter("userType");
    String email = req.getParameter("email");
    String password = req.getParameter("password");
    
    BranchMaster branchMaster = null;
    if (userType.equals("branchMaster")) {
      branchMaster = branchMasterService.getByEmailPassword(email, password);
    }
    
    if (branchMaster != null) { 
      HttpSession session = req.getSession();
      session.setAttribute("loginBranchMaster", branchMaster);
      String saveEmail = req.getParameter("saveEmail");
      if (saveEmail != null) {
        Cookie cookie2 = new Cookie("email", email);
        cookie2.setMaxAge(60 * 60 * 24 * 7); 
        resp.addCookie(cookie2);
      } else {
        Cookie cookie2 = new Cookie("email", "");
        cookie2.setMaxAge(0);
        resp.addCookie(cookie2);
      }
      
      return "redirect:../branchMaster/list.do";
      
    } else {
      return "auth/fail";
    }
  }
  
  @RequestMapping("logout")
  public String logout(HttpServletRequest req, HttpServletResponse res) throws Exception {
    req.getSession().invalidate();  
    return "redirect:../auth/login.do";
  }  
}









