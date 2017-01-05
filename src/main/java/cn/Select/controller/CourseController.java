package cn.Select.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageInfo;

import cn.Select.model.Course;
import cn.Select.service.CourseService;


@Controller
@RequestMapping("/")
public class CourseController {
	
	@Autowired
	private CourseService courseService;

	//设置了分页，每6条一页
	@RequestMapping("searchCourse")
	public String searchOrder(@ModelAttribute Course course, Model model, HttpServletRequest request) {
		PageInfo<Course> pageinfo = new PageInfo<Course>();
		String page = request.getParameter("page");
		int pageNum = 1;
		if (page != null && page.trim().length() != 0) {
			pageNum = Integer.parseInt(page);
		}
		pageinfo = courseService.searchCourse(pageNum, 6, course);
		List<Course> courselist = pageinfo.getList();
		model.addAttribute("courselist", courselist);
		model.addAttribute("pageNum", pageinfo.getPageNum());
		model.addAttribute("pages", pageinfo.getPages());
		model.addAttribute("course",course);
		return "index";
	}
	

}
