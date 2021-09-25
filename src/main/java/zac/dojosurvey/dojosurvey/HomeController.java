package zac.dojosurvey.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String index(){
        return "index.jsp";
    }

    @RequestMapping(path="/formSubmit", method = RequestMethod.POST)
    public String formSubmit(@RequestParam(value="name") String name, @RequestParam(value="loc") String loc, @RequestParam(value="lang") String lang, @RequestParam(value="comment") String comment, HttpSession session){
        session.setAttribute("name", name);
        session.setAttribute("location", loc);
        session.setAttribute("language", lang);
        session.setAttribute("comment", comment);
        return "redirect:/response";
    }

    @RequestMapping("/response")
    public String response(HttpSession session, Model model){
        String name = (String) session.getAttribute("name");
        String location = (String) session.getAttribute("location");
        String language = (String) session.getAttribute("language");
        String comment = (String) session.getAttribute("comment");
        model.addAttribute("name", name);
        model.addAttribute("location", location);
        model.addAttribute("language", language);
        model.addAttribute("comment", comment);
        return "response.jsp";
    }
}
