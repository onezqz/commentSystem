package controler;

import domain.Post;
import domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class UserControler {
    @Resource (name = "userService")
    private UserService userService;
    @RequestMapping(value = "/user/login.action")
    public ModelAndView login(User user,HttpSession session) {

        boolean isLogin = userService.login(user);
        ModelAndView mav=new ModelAndView();
        if(isLogin){

            //mav.addObject("user",user);
            session.setAttribute("user",user);
            mav.setViewName("redirect:/index.jsp");
            //return "redirect:/index.jsp";
            //request.setAttribute("user",user);
            //response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            mav.addObject("info","用户名或密码错误");
            mav.setViewName("/login.jsp");
            //return "forward:/login.jsp";
            //request.setAttribute("info","用户名或密码错误");
            //request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);
        }
        return mav;

    }
    @RequestMapping(value = "/user/register.action")
    public void register(User user,HttpServletRequest request, HttpServletResponse response,
                         HttpSession session) throws Exception {
        String checkcode = request.getParameter("checkcode");
        String strCode = (String) session.getAttribute("strCode");
        if(checkcode!=null && strCode.equals(checkcode)){
            //验证码正确，保存用户
            UUID uuid = UUID.randomUUID();
            user.setUid(uuid.toString());
            user.setState(0);
            user.setCode(null);
            //交给service层处理
            userService.register(user);
            //session.setAttribute("user",user);
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }else {
            //验证码不正确
            request.setAttribute("checkcode_info","验证码不正确");
            request.getRequestDispatcher(request.getContextPath()+"/register.jsp").forward(request,response);
        }
    }
    @RequestMapping(value = "/post.action")
    public ModelAndView post(Post post){
        UUID uuid = UUID.randomUUID();
        post.setPid(uuid.toString());
        //上传到service层
        userService.post(post);
        //回显到index.jsp层
        ModelAndView mav = new ModelAndView();
        mav.addObject("post",post);
        mav.setViewName("redirect:/index.jsp");
        return mav;
    }
    @RequestMapping(value = "/index.action")
    @ResponseBody()
    public Map<String,Object> index(HttpServletResponse response, HttpServletRequest request, HttpSession session){
        //获得帖子
        List<Post> postList = userService.findAllPost();
        //System.out.println(postList);
        Map <String, Object> map = new HashMap <String, Object>();
        map.put("postList",postList);
        return map;
    }
}
