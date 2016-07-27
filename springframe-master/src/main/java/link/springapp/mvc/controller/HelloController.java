package link.springapp.mvc.controller;

import link.springapp.mvc.domain.Article;
import link.springapp.mvc.service.ArticleService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
@Transactional
@RequestMapping("/")
public class HelloController {
    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        HashMap<String, Object> articleMap = new HashMap<>();
//        for (int i = 1; i < articleService.getArticleLength(); i++) {
        for (int i = 1; i <= 10; i++) {
            Article article = articleService.getArticle(i);
            articleMap.put(String.valueOf(i), article);
        }
        model.addAttribute("articleMap", articleMap);
        return "hello";
    }

    @RequestMapping(value = "/page/scroll", method = RequestMethod.POST)
    public String getMoreArticle(ModelMap model, @RequestParam(value = "id")int startId) {
        HashMap<String, Object> articleMap = new HashMap<>();
        for (int i = startId; i <= 10; i++) {
            Article article = articleService.getArticle(i);
            articleMap.put(String.valueOf(i), article);
        }
        model.addAttribute("articleMap", articleMap);
        return "scroll";
    }
}